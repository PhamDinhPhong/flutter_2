import 'package:flutter/material.dart';
import 'package:yoga/splash19.dart';

class splash18 extends StatefulWidget {
  const splash18({super.key});

  @override
  State<splash18> createState() => _splash18State();
}

class _splash18State extends State<splash18> {
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
                MaterialPageRoute(builder: (context) => splash19()),
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
              "How yoga can change your face",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
