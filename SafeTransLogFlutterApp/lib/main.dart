import 'package:flutter/material.dart';
import 'package:safetranslog/screens/login/login_user.dart';
import 'package:safetranslog/screens/login/verify_user_mobile.dart';
import 'package:safetranslog/screens/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context)=> SplashScreen(),
        LoginUser.id : (context)=> LoginUser(),
        VerifyUserMobile.id : (context)=> VerifyUserMobile(),
      },
    );
  }
}


