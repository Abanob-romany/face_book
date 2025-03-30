import 'package:face_book/ui/home/home.dart';
import 'package:face_book/ui/login/login.dart';
import 'package:flutter/material.dart';

Color white = Color(0xffFFFFFF);
Color blue = Color(0xff1877F2);
Color darkGray = Color(0xff898F9C);
Color black = Color(0xff242527);
Color veryLightBlue = Color(0xffECF0F8);
Color gray = Color(0xffAEB4BF);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        Home.routeName: (_) => const Home(),
        Login.routeName: (_) => const Login(),
      },
      initialRoute: Login.routeName, 
    );
  }
}
