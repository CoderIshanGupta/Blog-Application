import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/homescreen.dart';
import 'package:login/screens/signUp_screen.dart';
import 'package:login/utils/color_utils.dart';

import '../reusable_widget/reusable_widget.dart';
import 'Dashboad.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:
            [hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4"),],
            begin: Alignment.topCenter,end: Alignment.bottomCenter),),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height*0.2, 20, 0),
            child: Column(
              children: <Widget>[
              //  logoWidget("assets/images/bl1.jpg"),
                Container(
                  width: w,
                  height: h*0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/img10.jpg"),
                        fit: BoxFit.cover
                    ),

                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                reusableTextField(
                    "Enter Email Id", Icons.email_outlined ,
                    false, _emailTextController),
                SizedBox(height: 30,),
                reusableTextField(
                    "Enter Password",
                    Icons.lock_outline,
                    true, _passwordTextController),
                SizedBox(height: 20,),
                signInSignUpButton(context, true, (){

                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            Dashboad()));
                  }).onError((error,stackTrace){
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),

    );

  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",style: TextStyle(color: Colors.white70),),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignupScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        )
      ],

    );
  }
}


