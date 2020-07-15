import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/home.dart';
import 'package:provider_example/timerInfo.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),

      initialRoute: homePage.id,

      routes: {
        homePage.id : (context) => ChangeNotifierProvider
          (
          create: (context) => timerInfo(),
          child: homePage(),

        )
      },


    );
  }
}
