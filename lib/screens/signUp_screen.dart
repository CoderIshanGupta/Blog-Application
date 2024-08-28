import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/reusable_widget/reusable_widget.dart';

import '../utils/color_utils.dart';
import 'Dashboad.dart';
import 'homescreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4"),
          ],begin: Alignment.topCenter,end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height*0.2, 20, 0),
            child: Column(
              children: <Widget> [
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false, _userNameTextController),
                SizedBox(height:20),
                reusableTextField("Enter Email Id", Icons.email_outlined, false, _emailTextController),

                SizedBox(height: 20,),
                reusableTextField("Enter Password", Icons.lock_outline, false, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, false, (){
                  
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value){
                        print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>Dashboad() ));
                  }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                      });


                })

              ],
            ),
          ),
        ),
      ),
    );
  }
}
