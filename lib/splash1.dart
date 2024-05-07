import 'package:flutter/material.dart';
import 'package:yoga/splash2.dart';

class Splash1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome',
                // textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/pngwingleft.png',
                    width: 75,
                    height: 100,
                  ),
                  Column(
                    children: [
                      Text(
                        '1,200,000',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Global Yogi` Choice',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/pngwingright.png',
                    width: 75,
                    height: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250.0,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => splash2()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Đặt border radius tại đây
                      ),
                    ),
                  ),
                  child: Text('Let`s start',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ]),
      ),
    );
  }
}
