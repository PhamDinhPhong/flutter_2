import 'package:flutter/material.dart';

class splash20 extends StatefulWidget {
  const splash20({super.key});

  @override
  State<splash20> createState() => _splash20State();
}

class _splash20State extends State<splash20> {
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
                "How yoga can change your face",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/changeface.jpg', width: 250, height: 250,),
            Text("Yoga can boost circulation, relieve facial muscle tension, and fight against aging. It's a natural face care to refine your complexion and fighten facial contrours.")
          ],
        ),
      ),
    );
  }
}
