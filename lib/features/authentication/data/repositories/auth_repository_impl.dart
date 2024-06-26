import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/util/network/network_info.dart';
import '../../domain/entities/sign_in_entity.dart';
import '../../domain/entities/sign_up_entity.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../data_sources/auth_remote_data_source.dart';
import '../models/first_page_model.dart';
import '../models/sign_in_model.dart';
import '../models/sign_up_model.dart';

class AuthenticationRepositoryImp implements AuthenticationRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final NetworkInfo _networkInfo;
  AuthenticationRepositoryImp(
      {required NetworkInfo networkInfo,
      required AuthRemoteDataSource authRemoteDataSource})
      : _networkInfo = networkInfo,
        _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<Either<Failure, UserCredential>> signIn(SignInEntity signIn) async {
    if (await _networkInfo.isConnected) {
      try {
        final signInModel =
            SignInModel(email: signIn.email, password: signIn.password);
        final userCredential = await _authRemoteDataSource.signIn(signInModel);
        return Right(userCredential);
      } on ExistedAccountException {
        return Left(ExistedAccountFailure());
      } on WrongPasswordException {
        return Left(WrongPasswordFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signUp(SignUpEntity signUp) async {
    if (!await _networkInfo.isConnected) {
      return Left(OfflineFailure());
    } else if (signUp.password != signUp.repeatedPassword) {
      return Left(UnmatchedPassFailure());
    } else {
      try {
        final signUpModel = SignUpModel(
            name: signUp.name,
            email: signUp.email,
            password: signUp.password,
            repeatedPassword: signUp.repeatedPassword);
        final userCredential = await _authRemoteDataSource.signUp(signUpModel);
        return Right(userCredential);
      } on WeekPassException {
        return Left(WeekPassFailure());
      } on ExistedAccountException {
        return Left(ExistedAccountFailure());
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<Failure, FirstPageModel>> firstPage() async {
    final userCredential = FirebaseAuth.instance.currentUser;
    if (userCredential != null && userCredential.emailVerified) {
      return const Right(
          FirstPageModel(isVerifyingEmail: false, isLoggedIn: true));
    } else if (userCredential != null) {
      return const Right(
          FirstPageModel(isVerifyingEmail: true, isLoggedIn: false));
    } else {
      return const Right(
          FirstPageModel(isVerifyingEmail: false, isLoggedIn: false));
    }
  }

  @override
  Future<Either<Failure, Unit>> verifyEmail() async {
    if (await _networkInfo.isConnected) {
      try {
        await _authRemoteDataSource.verifyEmail();
        return const Right(unit);
      } on TooManyRequestsException {
        return Left(TooManyRequestsFailure());
      } on ServerException {
        return Left(ServerFailure());
      } on NoUserException {
        return Left(NoUserFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  Future<void> waitForVerifiedUser(Completer completer) async {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        completer.complete();
        timer.cancel();
      }
    });
    await completer.future;
  }

  @override
  Future<Either<Failure, Unit>> checkEmailVerification(
      Completer completer) async {
    try {
      await waitForVerifiedUser(completer).timeout(const Duration(days: 30));
      return const Right(unit);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> logOut() async {
    if (await _networkInfo.isConnected) {
      try {
        GoogleSignIn googleSignIn = GoogleSignIn();
        await googleSignIn.signOut();
        await FirebaseAuth.instance.signOut();
        return const Right(unit);
      } catch (e) {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, UserCredential>> googleSignIn() async {
    if (!await _networkInfo.isConnected) {
      return Left(OfflineFailure());
    } else {
      try {
        final userCredential =
            await _authRemoteDataSource.googleAuthentication();
        return Right(userCredential);
      } on ServerException {
        return Left(ServerFailure());
      }
    }
  }
}
