import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Mj'),
      debugShowCheckedModeBanner: false,
      color: Colors.orangeAccent,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 188, 82, 6),
        appBar: AppBar(
          title: Text(
            'سنگ     کاغذ       قیچی',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          titleTextStyle: TextStyle(),
          backgroundColor: Color.fromARGB(128, 255, 172, 64),
          elevation: 20,
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

int top = 1;
int buttom = 1;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 10,
            child: Image(
              image: AssetImage('images/$top.png'),
            ),
          ),
          Expanded(
            flex: 7,
            child: Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.black,
                    side: BorderSide(color: Colors.white10, width: 6)),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1;
                    buttom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 10,
              child: Image(
                image: AssetImage('images/$buttom.png'),
              ))
        ],
      ),
    );
  }
}
