import 'package:act3_7/firebase_options.dart';
import 'package:act3_7/screens/home.dart';
import 'package:act3_7/screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:act3_7/screens/welcome.dart';
import 'package:act3_7/screens/registration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome(),
      initialRoute: Welcome.routeName,
      routes: <String , WidgetBuilder> {
        Login.routeName: ( (context) => const Login()),
        Welcome.routeName: ( (context) => const Welcome()),
        Register.routeName: ( (context) => const Register()),
        Home.routeName : ( (context) => const Home()),
      },
    );
  }
}
