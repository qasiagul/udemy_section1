import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  int num = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Center(
              child: Text('Number of donuts eaten today:$num'),
            ),
            Center(
              child: RawMaterialButton(
                onPressed: () {  },
                fillColor: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                constraints: BoxConstraints.tightFor(width: 150.0,height: 60.0),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                num++;
              });
            },
        backgroundColor: Colors.red,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
