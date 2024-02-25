import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ingredients_scanner/models/auth_data/user_auth_storage.dart';
import 'package:ingredients_scanner/router/router.dart';
import 'package:local_auth/local_auth.dart';
import 'package:talker_flutter/talker_flutter.dart';
import '../../../user_auth/firebase_auth/firebase_auth_service.dart';
import '../bloc/login_screen_bloc.dart';
import '../widgets/enable_local_auth_modal_bottom_sheet.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginScreenBloc = LoginScreenBloc();
  final FirebaseAuthService _authService = FirebaseAuthService();

  @override
  void initState() {
    _loginScreenBloc.add(LoadUserData());
    _readFromStorage();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  final UserAuthStorage authStorage = UserAuthStorage();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var localAuth = LocalAuthentication();

  final TextEditingController _emailController =
      TextEditingController(text: "");
  final TextEditingController _passwordController =
      TextEditingController(text: "");

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        body: BlocBuilder<LoginScreenBloc, LoginScreenState>(
            bloc: _loginScreenBloc,
            builder: (context, state) {
              if (state is UserDataLoaded) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .052,
                        ),
                        SizedBox(
                            height: size.height * .4,
                            child: Image.asset('assets/images/3.jpg')),
                        SizedBox(
                          height: size.height * .04,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  validator: (String? value) {
                                    return value == null || value.isEmpty
                                        ? 'Please enter your email'
                                        : !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                .hasMatch(value)
                                            ? 'Please enter a valid email address'
                                            : null;
                                  },
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Email',
                                    prefixIcon: const Icon(
                                      Iconsax.user,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: _emailController.clear,
                                      icon: const Icon(Icons.clear),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .02,
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  validator: (String? value) {
                                    return value == null || value.isEmpty
                                        ? 'Please enter your password'
                                        : null;
                                  },
                                  obscureText: _obscureText,
                                  textInputAction: TextInputAction.next,
                                  textCapitalization: TextCapitalization.none,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscureText
                                            ? Iconsax.eye4
                                            : Iconsax.eye_slash4,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _obscureText = !_obscureText;
                                        });
                                      },
                                    ),
                                    labelText: 'Password',
                                    hintText: 'Password',
                                    prefixIcon: const Icon(
                                      Iconsax.key,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Remember me',
                                  style: theme.inputDecorationTheme.labelStyle,
                                ),
                                Checkbox(
                                  value: state.preferences.getRememberMe(),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      state.preferences.setRememberMe(value!);
                                    });
                                  },
                                )
                              ],
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: theme.inputDecorationTheme.labelStyle,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * .05,
                        ),
                        SizedBox(
                          width: size.width * 0.36,
                          child: MaterialButton(
                            onPressed: () {
                              _onFormSubmit(state);
                            },
                            height: size.height * .045,
                            color: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        SizedBox(
                          width: size.width * 0.36,
                          child: MaterialButton(
                            onPressed: _signInWithGoogle,
                            height: size.height * .045,
                            color: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: SvgPicture.asset(
                                'assets/svg/Google__G__logo.svg'),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextButton(
                              onPressed: () => AutoRouter.of(context)
                                  .push(const SignRoute()),
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    color: Color(0xFF13B5A2),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }
              if (state is UserDataLoadingFailure) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Something went wrong',
                        style: theme.textTheme.headlineMedium,
                      ),
                      Text(
                        'Please try againg later',
                        style:
                            theme.textTheme.labelSmall?.copyWith(fontSize: 16),
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      TextButton(
                        onPressed: () {
                          _loginScreenBloc.add(LoadUserData());
                        },
                        child: const Text('Try againg'),
                      ),
                    ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }));
  }

  Future<void> _readFromStorage() async {
    var enableLocalAuth = await authStorage.getEnableLocalAuth();
    _emailController.text = await authStorage.getEmail() ?? '';
    _passwordController.text = await authStorage.getPassword() ?? '';

    if (enableLocalAuth != null && "true" == enableLocalAuth) {
      if (await authenticateIsAvailable()) {
        bool didAuthenticate = await localAuth.authenticate(
            localizedReason: 'Please authenticate to sign in');
        if (!didAuthenticate) {
          _emailController.text = '';
          _passwordController.text = '';
        }
      }
    }
  }

  _onFormSubmit(UserDataLoaded state) async {
    if (_formKey.currentState?.validate() ?? false) {
      if (state.preferences.getRememberMe() ?? false) {
        authStorage.setEmail(_emailController.text);
        authStorage.setPassword(_passwordController.text);
      }
      _signIn();
    }
  }

  Future<bool> authenticateIsAvailable() async {
    final isAvailable = await localAuth.canCheckBiometrics;
    final isDeviceSupported = await localAuth.isDeviceSupported();
    return isAvailable && isDeviceSupported;
  }

  _onEnableLocalAuth() async {
    authStorage.setEnableLocalAuth('true');

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
          "Fingerprint authentication enabled.\nClose the app and restart it again"),
    ));
  }

  Future<void> _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      User? user = await _authService.signInWithEmailAndPassword(
          email, password, _scaffoldKey);

      if (user != null) {
        GetIt.I<Talker>().debug('successful user login');
        _checkForEnableLocalAuth();
      } else {
        GetIt.I<Talker>().debug('user null');
      }
    } catch (e, st) {
      GetIt.I<Talker>().handle(e, st);
    }
  }

  _signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);
        await _authService.signInWithCredential(credential, _scaffoldKey);
        _checkForEnableLocalAuth();
      }
    } catch (e, st) {
      GetIt.I<Talker>().handle(e, st);
    }
  }

  _checkForEnableLocalAuth() async {
    if (await localAuth.canCheckBiometrics) {
      showModalBottomSheet<void>(
        context: _scaffoldKey.currentContext!,
        builder: (BuildContext context) {
          return EnableLocalAuthModalBottomSheet(action: _onEnableLocalAuth);
        },
      ).then((value) => AutoRouter.of(context).push(const BottomNavRoute()));
    } else {
      AutoRouter.of(context).push(const BottomNavRoute());
    }
  }
}
