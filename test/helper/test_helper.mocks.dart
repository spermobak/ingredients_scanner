// Mocks generated by Mockito 5.4.4 from annotations
// in ingredients_scanner/test/helper/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:dartz/dartz.dart' as _i2;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:ingredients_scanner/core/error/failures.dart' as _i10;
import 'package:ingredients_scanner/core/network/network_info.dart' as _i34;
import 'package:ingredients_scanner/core/usecase/usecase.dart' as _i19;
import 'package:ingredients_scanner/features/authentication/data/data_sources/auth_remote_data_source.dart'
    as _i13;
import 'package:ingredients_scanner/features/authentication/data/models/sign_in_model.dart'
    as _i15;
import 'package:ingredients_scanner/features/authentication/data/models/sign_up_model.dart'
    as _i14;
import 'package:ingredients_scanner/features/authentication/domain/entities/first_page_entity.dart'
    as _i3;
import 'package:ingredients_scanner/features/authentication/domain/entities/sign_in_entity.dart'
    as _i11;
import 'package:ingredients_scanner/features/authentication/domain/entities/sign_up_entity.dart'
    as _i12;
import 'package:ingredients_scanner/features/authentication/domain/repositories/authentication_repository.dart'
    as _i5;
import 'package:ingredients_scanner/features/authentication/domain/usecases/check_verification_usecase.dart'
    as _i22;
import 'package:ingredients_scanner/features/authentication/domain/usecases/first_page_usecase.dart'
    as _i21;
import 'package:ingredients_scanner/features/authentication/domain/usecases/google_auth_usecase.dart'
    as _i23;
import 'package:ingredients_scanner/features/authentication/domain/usecases/logout_usecase.dart'
    as _i20;
import 'package:ingredients_scanner/features/authentication/domain/usecases/sign_in_usecase.dart'
    as _i16;
import 'package:ingredients_scanner/features/authentication/domain/usecases/sign_up_usecase.dart'
    as _i17;
import 'package:ingredients_scanner/features/authentication/domain/usecases/verifiy_email_usecase.dart'
    as _i18;
import 'package:ingredients_scanner/features/food_preferences/data/datasources/food_preference_data_source.dart'
    as _i33;
import 'package:ingredients_scanner/features/food_preferences/data/models/food_preferences_model.dart'
    as _i8;
import 'package:ingredients_scanner/features/food_preferences/domain/entities/food_preferences_entity.dart'
    as _i32;
import 'package:ingredients_scanner/features/food_preferences/domain/repositories/food_preferences_repository.dart'
    as _i31;
import 'package:ingredients_scanner/features/user_preferences/data/data_sources/user_preferences_data_source.dart'
    as _i25;
import 'package:ingredients_scanner/features/user_preferences/data/models/user_preferences_model.dart'
    as _i6;
import 'package:ingredients_scanner/features/user_preferences/domain/entities/user_preferences_entity.dart'
    as _i24;
import 'package:ingredients_scanner/features/user_preferences/domain/repositories/user_preferences_repositiory.dart'
    as _i7;
import 'package:ingredients_scanner/features/user_preferences/domain/usecases/get_user_preference.dart'
    as _i27;
import 'package:ingredients_scanner/features/user_preferences/domain/usecases/params/user_preferences_params.dart'
    as _i29;
import 'package:ingredients_scanner/features/user_preferences/domain/usecases/update_camera_flash.dart'
    as _i28;
import 'package:ingredients_scanner/features/user_preferences/domain/usecases/update_use_biometrics.dart'
    as _i30;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i35;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFirstPageEntity_1 extends _i1.SmartFake
    implements _i3.FirstPageEntity {
  _FakeFirstPageEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserCredential_2 extends _i1.SmartFake
    implements _i4.UserCredential {
  _FakeUserCredential_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUnit_3 extends _i1.SmartFake implements _i2.Unit {
  _FakeUnit_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthenticationRepository_4 extends _i1.SmartFake
    implements _i5.AuthenticationRepository {
  _FakeAuthenticationRepository_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserPreferencesModel_5 extends _i1.SmartFake
    implements _i6.UserPreferencesModel {
  _FakeUserPreferencesModel_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUserPreferencesRepository_6 extends _i1.SmartFake
    implements _i7.UserPreferencesRepository {
  _FakeUserPreferencesRepository_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFoodPreferencesModel_7 extends _i1.SmartFake
    implements _i8.FoodPreferencesModel {
  _FakeFoodPreferencesModel_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_8 extends _i1.SmartFake implements Duration {
  _FakeDuration_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthenticationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthenticationRepository extends _i1.Mock
    implements _i5.AuthenticationRepository {
  MockAuthenticationRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> signIn(
          _i11.SignInEntity? signIn) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [signIn],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #signIn,
            [signIn],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> signUp(
          _i12.SignUpEntity? signUp) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [signUp],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #signUp,
            [signUp],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> googleSignIn() =>
      (super.noSuchMethod(
        Invocation.method(
          #googleSignIn,
          [],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #googleSignIn,
            [],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);

  @override
  _i3.FirstPageEntity firstPage() => (super.noSuchMethod(
        Invocation.method(
          #firstPage,
          [],
        ),
        returnValue: _FakeFirstPageEntity_1(
          this,
          Invocation.method(
            #firstPage,
            [],
          ),
        ),
      ) as _i3.FirstPageEntity);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> verifyEmail() =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyEmail,
          [],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #verifyEmail,
            [],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> checkEmailVerification(
          _i9.Completer<dynamic>? completer) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkEmailVerification,
          [completer],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #checkEmailVerification,
            [completer],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> logOut() =>
      (super.noSuchMethod(
        Invocation.method(
          #logOut,
          [],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #logOut,
            [],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [UserCredential].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserCredential extends _i1.Mock implements _i4.UserCredential {
  MockUserCredential() {
    _i1.throwOnMissingStub(this);
  }
}

/// A class which mocks [AuthRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRemoteDataSource extends _i1.Mock
    implements _i13.AuthRemoteDataSource {
  MockAuthRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i4.UserCredential> signUp(_i14.SignUpModel? signUp) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUp,
          [signUp],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signUp,
            [signUp],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> signIn(_i15.SignInModel? signIn) =>
      (super.noSuchMethod(
        Invocation.method(
          #signIn,
          [signIn],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #signIn,
            [signIn],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i4.UserCredential> googleAuthentication() => (super.noSuchMethod(
        Invocation.method(
          #googleAuthentication,
          [],
        ),
        returnValue: _i9.Future<_i4.UserCredential>.value(_FakeUserCredential_2(
          this,
          Invocation.method(
            #googleAuthentication,
            [],
          ),
        )),
      ) as _i9.Future<_i4.UserCredential>);

  @override
  _i9.Future<_i2.Unit> verifyEmail() => (super.noSuchMethod(
        Invocation.method(
          #verifyEmail,
          [],
        ),
        returnValue: _i9.Future<_i2.Unit>.value(_FakeUnit_3(
          this,
          Invocation.method(
            #verifyEmail,
            [],
          ),
        )),
      ) as _i9.Future<_i2.Unit>);
}

/// A class which mocks [SignInUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignInUseCase extends _i1.Mock implements _i16.SignInUseCase {
  MockSignInUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> call(
          _i11.SignInEntity? signIn) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [signIn],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #call,
            [signIn],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);
}

/// A class which mocks [SignUpUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSignUpUseCase extends _i1.Mock implements _i17.SignUpUseCase {
  MockSignUpUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> call(
          _i12.SignUpEntity? signup) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [signup],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #call,
            [signup],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);
}

/// A class which mocks [VerifyEmailUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockVerifyEmailUseCase extends _i1.Mock
    implements _i18.VerifyEmailUseCase {
  MockVerifyEmailUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> call(_i19.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [LogOutUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogOutUseCase extends _i1.Mock implements _i20.LogOutUseCase {
  MockLogOutUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> call(_i19.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [FirstPageUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirstPageUseCase extends _i1.Mock implements _i21.FirstPageUseCase {
  MockFirstPageUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i3.FirstPageEntity call() => (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue: _FakeFirstPageEntity_1(
          this,
          Invocation.method(
            #call,
            [],
          ),
        ),
      ) as _i3.FirstPageEntity);
}

/// A class which mocks [CheckVerificationUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCheckVerificationUseCase extends _i1.Mock
    implements _i22.CheckVerificationUseCase {
  MockCheckVerificationUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> call(
          _i9.Completer<dynamic>? completer) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [completer],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [completer],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [GoogleAuthUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoogleAuthUseCase extends _i1.Mock implements _i23.GoogleAuthUseCase {
  MockGoogleAuthUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.AuthenticationRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAuthenticationRepository_4(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i5.AuthenticationRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>> call(
          _i19.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>.value(
                _FakeEither_0<_i10.Failure, _i4.UserCredential>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i4.UserCredential>>);
}

/// A class which mocks [UserPreferencesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserPreferencesRepository extends _i1.Mock
    implements _i7.UserPreferencesRepository {
  MockUserPreferencesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i24.UserPreferencesEntity>>
      getUserPreferences() => (super.noSuchMethod(
            Invocation.method(
              #getUserPreferences,
              [],
            ),
            returnValue: _i9.Future<
                    _i2.Either<_i10.Failure, _i24.UserPreferencesEntity>>.value(
                _FakeEither_0<_i10.Failure, _i24.UserPreferencesEntity>(
              this,
              Invocation.method(
                #getUserPreferences,
                [],
              ),
            )),
          ) as _i9
              .Future<_i2.Either<_i10.Failure, _i24.UserPreferencesEntity>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> updateCameraFlash(
          bool? value) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCameraFlash,
          [value],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #updateCameraFlash,
            [value],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> updateUseBiometrics(
          bool? value) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUseBiometrics,
          [value],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #updateUseBiometrics,
            [value],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [UserPreferencesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserPreferencesDataSource extends _i1.Mock
    implements _i25.UserPreferencesDataSource {
  MockUserPreferencesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i6.UserPreferencesModel> getUserPreferences() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserPreferences,
          [],
        ),
        returnValue: _i9.Future<_i6.UserPreferencesModel>.value(
            _FakeUserPreferencesModel_5(
          this,
          Invocation.method(
            #getUserPreferences,
            [],
          ),
        )),
      ) as _i9.Future<_i6.UserPreferencesModel>);

  @override
  _i9.Future<_i2.Unit> updateCameraFlash(bool? value) => (super.noSuchMethod(
        Invocation.method(
          #updateCameraFlash,
          [value],
        ),
        returnValue: _i9.Future<_i2.Unit>.value(_FakeUnit_3(
          this,
          Invocation.method(
            #updateCameraFlash,
            [value],
          ),
        )),
      ) as _i9.Future<_i2.Unit>);

  @override
  _i9.Future<_i2.Unit> updateUseBiometrics(bool? value) => (super.noSuchMethod(
        Invocation.method(
          #updateUseBiometrics,
          [value],
        ),
        returnValue: _i9.Future<_i2.Unit>.value(_FakeUnit_3(
          this,
          Invocation.method(
            #updateUseBiometrics,
            [value],
          ),
        )),
      ) as _i9.Future<_i2.Unit>);
}

/// A class which mocks [SharedPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockSharedPreferences extends _i1.Mock implements _i26.SharedPreferences {
  MockSharedPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Set<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>{},
      ) as Set<String>);

  @override
  Object? get(String? key) => (super.noSuchMethod(Invocation.method(
        #get,
        [key],
      )) as Object?);

  @override
  bool? getBool(String? key) => (super.noSuchMethod(Invocation.method(
        #getBool,
        [key],
      )) as bool?);

  @override
  int? getInt(String? key) => (super.noSuchMethod(Invocation.method(
        #getInt,
        [key],
      )) as int?);

  @override
  double? getDouble(String? key) => (super.noSuchMethod(Invocation.method(
        #getDouble,
        [key],
      )) as double?);

  @override
  String? getString(String? key) => (super.noSuchMethod(Invocation.method(
        #getString,
        [key],
      )) as String?);

  @override
  bool containsKey(String? key) => (super.noSuchMethod(
        Invocation.method(
          #containsKey,
          [key],
        ),
        returnValue: false,
      ) as bool);

  @override
  List<String>? getStringList(String? key) =>
      (super.noSuchMethod(Invocation.method(
        #getStringList,
        [key],
      )) as List<String>?);

  @override
  _i9.Future<bool> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> setStringList(
    String? key,
    List<String>? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setStringList,
          [
            key,
            value,
          ],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> remove(String? key) => (super.noSuchMethod(
        Invocation.method(
          #remove,
          [key],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> commit() => (super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<bool> clear() => (super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<void> reload() => (super.noSuchMethod(
        Invocation.method(
          #reload,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);
}

/// A class which mocks [GetUserPreferences].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetUserPreferences extends _i1.Mock
    implements _i27.GetUserPreferences {
  MockGetUserPreferences() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.UserPreferencesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeUserPreferencesRepository_6(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i7.UserPreferencesRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i24.UserPreferencesEntity>> call(
          _i19.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9
            .Future<_i2.Either<_i10.Failure, _i24.UserPreferencesEntity>>.value(
            _FakeEither_0<_i10.Failure, _i24.UserPreferencesEntity>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i24.UserPreferencesEntity>>);
}

/// A class which mocks [UpdateCameraFlash].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateCameraFlash extends _i1.Mock implements _i28.UpdateCameraFlash {
  MockUpdateCameraFlash() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.UserPreferencesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeUserPreferencesRepository_6(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i7.UserPreferencesRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> call(
          _i29.UserPreferencesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [UpdateUseBiometrics].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateUseBiometrics extends _i1.Mock
    implements _i30.UpdateUseBiometrics {
  MockUpdateUseBiometrics() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.UserPreferencesRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeUserPreferencesRepository_6(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i7.UserPreferencesRepository);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> call(
          _i29.UserPreferencesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [FoodPreferencesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockFoodPreferencesRepository extends _i1.Mock
    implements _i31.FoodPreferencesRepository {
  MockFoodPreferencesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i32.FoodPreferencesEntity>>
      getFoodPreference() => (super.noSuchMethod(
            Invocation.method(
              #getFoodPreference,
              [],
            ),
            returnValue: _i9.Future<
                    _i2.Either<_i10.Failure, _i32.FoodPreferencesEntity>>.value(
                _FakeEither_0<_i10.Failure, _i32.FoodPreferencesEntity>(
              this,
              Invocation.method(
                #getFoodPreference,
                [],
              ),
            )),
          ) as _i9
              .Future<_i2.Either<_i10.Failure, _i32.FoodPreferencesEntity>>);

  @override
  _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>> setFoodPreference(
          _i8.FoodPreferencesModel? foodPreferencesModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #setFoodPreference,
          [foodPreferencesModel],
        ),
        returnValue: _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i10.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #setFoodPreference,
            [foodPreferencesModel],
          ),
        )),
      ) as _i9.Future<_i2.Either<_i10.Failure, _i2.Unit>>);
}

/// A class which mocks [RemoteFoodPreferencesDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteFoodPreferencesDataSource extends _i1.Mock
    implements _i33.RemoteFoodPreferencesDataSource {
  MockRemoteFoodPreferencesDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i8.FoodPreferencesModel> getFoodPreference() =>
      (super.noSuchMethod(
        Invocation.method(
          #getFoodPreference,
          [],
        ),
        returnValue: _i9.Future<_i8.FoodPreferencesModel>.value(
            _FakeFoodPreferencesModel_7(
          this,
          Invocation.method(
            #getFoodPreference,
            [],
          ),
        )),
      ) as _i9.Future<_i8.FoodPreferencesModel>);

  @override
  _i9.Future<_i2.Unit> setFoodPreference(
          _i8.FoodPreferencesModel? foodPreferencesModel) =>
      (super.noSuchMethod(
        Invocation.method(
          #setFoodPreference,
          [foodPreferencesModel],
        ),
        returnValue: _i9.Future<_i2.Unit>.value(_FakeUnit_3(
          this,
          Invocation.method(
            #setFoodPreference,
            [foodPreferencesModel],
          ),
        )),
      ) as _i9.Future<_i2.Unit>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i34.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
}

/// A class which mocks [InternetConnection].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnection extends _i1.Mock
    implements _i35.InternetConnection {
  MockInternetConnection() {
    _i1.throwOnMissingStub(this);
  }

  @override
  Duration get checkInterval => (super.noSuchMethod(
        Invocation.getter(#checkInterval),
        returnValue: _FakeDuration_8(
          this,
          Invocation.getter(#checkInterval),
        ),
      ) as Duration);

  @override
  _i9.Future<bool> get hasInternetAccess => (super.noSuchMethod(
        Invocation.getter(#hasInternetAccess),
        returnValue: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<_i35.InternetStatus> get internetStatus => (super.noSuchMethod(
        Invocation.getter(#internetStatus),
        returnValue: _i9.Future<_i35.InternetStatus>.value(
            _i35.InternetStatus.connected),
      ) as _i9.Future<_i35.InternetStatus>);

  @override
  _i9.Stream<_i35.InternetStatus> get onStatusChange => (super.noSuchMethod(
        Invocation.getter(#onStatusChange),
        returnValue: _i9.Stream<_i35.InternetStatus>.empty(),
      ) as _i9.Stream<_i35.InternetStatus>);
}
