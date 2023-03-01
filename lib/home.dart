import 'package:flutter/material.dart';
import 'dart:math';

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int numOfImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          backgroundColor: Colors.orange[800],
          title: Text(
            'Magic Ball',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ask a quistion?'),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shadowColor: Colors.black,
                    elevation: 0,
                    primary: Colors.white,
                    side: BorderSide.none),
                onPressed: () {
                  setState(() {
                    numOfImage = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$numOfImage.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
