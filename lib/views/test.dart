import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  googleSignup() async {
    print('Google sign up');
    GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      var result = await _googleSignIn.signIn();

      print(result);
    }
    catch (error) {
      print(error);
    }


  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(onPressed: () {
                  googleSignup();
                }, child: Text(
                  'Google log in'
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}




