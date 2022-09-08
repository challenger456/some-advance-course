import 'package:flutter/material.dart';
import 'package:some_advance_course/screen_two.dart';
import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: HomeScreen(),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo(),
      },
    );
  }
}
