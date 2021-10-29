import 'package:flutter/material.dart';
import 'package:word_guesser_game/src/bloc/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc intro'),
      ),
      body: Form(
        child: Column(
          children: [
            emailField(),
            pwdField(),
            const SizedBox(
              height: 10,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  emailField() => StreamBuilder(
        stream: bloc.email,
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          return const TextField(
            //onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Enter Email address',
              labelText: 'Email',
              //errorText: snapshot.error,
            ),
          );
        },
      );

  pwdField() => StreamBuilder(
        stream: bloc.password,
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
            return const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password',
                labelText: 'Password',
                // errorText: snapshot.error
              ),
            );
        },
      );

  submitButton() => TextButton(onPressed: () {}, child: const Text('Login'));
}
