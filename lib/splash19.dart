import 'package:flutter/material.dart';
import 'package:yoga/splash20.dart';

class splash19 extends StatefulWidget {
  const splash19({super.key});

  @override
  State<splash19> createState() => _splash19State();
}

class _splash19State extends State<splash19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('03 BODY DATA'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => splash20()),
              );
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "What's your target waight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
