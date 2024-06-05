import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ingredients_scanner/features/authentication/presentation/bloc/authentication/auth_bloc.dart';
import 'package:ingredients_scanner/features/user_data/presentation/bloc/user_data_bloc.dart';

import '../../../../../config/router/router.dart';
import '../../widgets/auth/sign_up_form.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is GoogleSignInState) {
            BlocProvider.of<UserDataBloc>(context).add(GoogleAddUserData());
            context.navigateTo(const HomeNavigationRoute());
          }
          if (state is SignedInPageState) {}
        },
        child: Scaffold(
          body: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(
                    height: 200,
                    width: 200,
                    image: AssetImage("assets/images/2.jpg")),
              ),
              Center(
                  child: Text(
                "Signup",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              SignUpForm(),
            ],
          ),
        ));
  }
}
