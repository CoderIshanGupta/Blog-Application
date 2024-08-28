import 'package:flutter/material.dart';
import 'package:login/screens/blog_provider.dart';
import 'package:login/screens/homescreen.dart';
import 'package:login/screens/signUp_screen.dart';
import 'package:login/screens/signin_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (context) => BlogProvider()..loadBlogsFromStorage(),
      child: MaterialApp(
        title: 'Blog App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SigninScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

  // This widget is the root of your application.
  //@override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//      // home : Homescreen()
//      home: const SigninScreen(),
//     );
//   }
// }

