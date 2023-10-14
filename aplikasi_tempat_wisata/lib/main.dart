import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //to match column width with device's width
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                  'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              )),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8,),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.access_time_rounded),
                      SizedBox(height: 8,),
                      Text('09.00 - 20.00')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.monetization_on_rounded),
                      SizedBox(height: 8,),
                      Text('Rp 25.000')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}