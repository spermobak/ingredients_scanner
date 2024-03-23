import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'config/router/router.dart';
import 'core/network/network_info.dart';
import 'features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'features/authentication/data/repositories/auth_repository_impl.dart';
import 'features/authentication/domain/repositories/authentication_repository.dart';
import 'features/authentication/domain/usecases/check_verification_usecase.dart';
import 'features/authentication/domain/usecases/first_page_usecase.dart';
import 'features/authentication/domain/usecases/google_auth_usecase.dart';
import 'features/authentication/domain/usecases/logout_usecase.dart';
import 'features/authentication/domain/usecases/sign_in_usecase.dart';
import 'features/authentication/domain/usecases/sign_up_usecase.dart';
import 'features/authentication/domain/usecases/verifiy_email_usecase.dart';
import 'features/authentication/presentation/bloc/authentication/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'features/other/domain/models/settings/user_pereference.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! Features - posts

// Bloc

  sl.registerFactory(() => AuthBloc(
      signInUseCase: sl(),
      signUpUseCase: sl(),
      firstPage: sl(),
      verifyEmailUseCase: sl(),
      checkVerificationUseCase: sl(),
      logOutUseCase: sl(),
      googleAuthUseCase: sl()));

// Usecases

  sl.registerLazySingleton(() => SignInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  sl.registerLazySingleton(() => FirstPageUseCase(sl()));
  sl.registerLazySingleton(() => VerifyEmailUseCase(sl()));
  sl.registerLazySingleton(() => CheckVerificationUseCase(sl()));
  sl.registerLazySingleton(() => LogOutUseCase(sl()));
  sl.registerLazySingleton(() => GoogleAuthUseCase(sl()));

// Repository

  sl.registerLazySingleton<AuthenticationRepository>(() =>
      AuthenticationRepositoryImp(
          networkInfo: sl(), authRemoteDataSource: sl()));

// Datasources

  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());

//! Core

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//! External

  sl.registerLazySingleton(() => InternetConnection());

  //! Config

  sl.registerSingleton<AppRouter>(AppRouter());

  //FirebaseAuth
  sl.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  //UserPreferences
  sl.registerSingleton(UserPreferences.getUserPreferences());
}
