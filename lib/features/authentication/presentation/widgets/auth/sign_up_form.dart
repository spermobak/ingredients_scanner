import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../config/router/router.dart';
import '../../../domain/entities/sign_up_entity.dart';
import '../../bloc/authentication/auth_bloc.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Iconsax.user,
                    size: 18,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-Mail',
                  prefixIcon: Icon(
                    Icons.mail,
                    size: 18,
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your E-Mail';
                  } else if (!EmailValidator.validate(value)) {
                    return 'Please enter a valid E-Mail';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: TextFormField(
                controller: _passwordController,
                obscureText: isVisible ? false : true,
                decoration: InputDecoration(
                  labelText: 'Create password',
                  prefixIcon: const Icon(
                    Iconsax.key,
                    size: 18,
                  ),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isVisible ? Iconsax.eye4 : Iconsax.eye_slash4,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 5) {
                    return 'The password must contains more than five characters.';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: TextFormField(
                controller: _confirmPasswordController,
                obscureText: isVisible ? false : true,
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  prefixIcon: Icon(
                    Iconsax.key,
                    size: 18,
                  ),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password confirmation';
                  } else if (value != _passwordController.text) {
                    return "Password doesn't match.";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthBloc, AuthState>(listener: (_, state) {
              if (state is SignedUpState) {
                AutoRouter.of(context).replace(const VerifyEmailRoute());
                BlocProvider.of<AuthBloc>(context)
                    .add(SendEmailVerificationEvent());
              } else if (state is GoogleSignInState) {
                AutoRouter.of(context).replace(const HomeNavigationRoute());
              }
            }, builder: (context, state) {
              if (state is LoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ErrorAuthState) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Center(
                        child: Text(
                          state.message,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context).add(SignUpEvent(
                            signUpEntity: SignUpEntity(
                          email: _emailController.text,
                          password: _passwordController.text,
                          repeatedPassword: _confirmPasswordController.text,
                          name: _usernameController.text,
                        )));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                        minimumSize:
                            MaterialStateProperty.all(const Size(500, 50)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 18)),
                      ),
                      child: const Text('Signup'),
                    )
                  ],
                );
              }
              return ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(SignUpEvent(
                      signUpEntity: SignUpEntity(
                    email: _emailController.text,
                    password: _passwordController.text,
                    repeatedPassword: _confirmPasswordController.text,
                    name: _usernameController.text,
                  )));
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  minimumSize: MaterialStateProperty.all(const Size(500, 50)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 18)),
                ),
                child: const Text('Signup'),
              );
            }),
            Container(
                margin: const EdgeInsets.all(20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: const Divider(
                          thickness: 2,
                          color: Colors.grey,
                        )),
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        child: const Text(
                          'OR',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                optionsBox(
                    color: Colors.blue,
                    imagePath: "assets/icons/facebook_icon.png",
                    onPressed: () {}),
                optionsBox(
                    color: Colors.red,
                    imagePath: "assets/icons/google_icon.png",
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context)
                          .add(SignInWithGoogleEvent());
                    }),
                optionsBox(
                    color: Colors.blue,
                    imagePath: "assets/icons/twitter_icon.png",
                    onPressed: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                    onPressed: () =>
                        AutoRouter.of(context).replace(const SignInRoute()),
                    child: const Text("Login"))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget optionsBox(
      {Color? color,
      required String? imagePath,
      required Function? onPressed}) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Container(
          height: 50,
          margin:
              const EdgeInsets.only(top: 0, bottom: 20, left: 10, right: 10),
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                imagePath!,
                color: color,
              ))),
    );
  }
}
