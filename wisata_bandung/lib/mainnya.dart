import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 1;

  void _increment(){
    setState(() {
      i += 1;
    });
  }
 
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dzikir'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: ()=>_increment(),
                child: Text('TextButton'),
                ),
              ),
              Container(
                child: Text('$i', 
                style: TextStyle(fontSize: 30))
              ),
            ],
          ),
        ),
      ),
    );
  }
}