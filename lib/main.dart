import 'package:flutter/material.dart';
import 'app/widget/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app/widget/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MyApp());
}
// myHome
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future:  Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Mainpage(),
          );
        }
      }
    );
  }
}


