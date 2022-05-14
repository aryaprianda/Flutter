import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen();
            }));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SecondScreen> {
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