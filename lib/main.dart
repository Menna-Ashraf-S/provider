import 'package:app/Model/data.dart';
import 'package:app/Pages/Sign.dart';
import 'package:app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Data()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/sign',
        routes: <String, WidgetBuilder>{
          '/sign': (context) => SignUP(),
          '/home': (context) => Home(),
        },
      ),
    );
  }
}
