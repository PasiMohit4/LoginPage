
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speakup/firebase/firebase_options.dart';
import 'package:speakup/home.dart';
import 'package:speakup/login.dart';
import 'package:speakup/signup.dart';



late final FirebaseApp app;
late final FirebaseAuth auth;

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();

  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',

      routes: {
        'login': (context) => MyLoginPage(),
        'signup': (context) => Singup(),
        'home': (context) => MyHomePage(),
      },
      title: 'SpeakUp',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),




    );
  }
}

