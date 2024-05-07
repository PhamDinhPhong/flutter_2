import 'package:flutter/material.dart';
import 'package:yoga/splash9.dart';

class splash8 extends StatelessWidget {
  const splash8({super.key});

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
        title: Text('01 GOAL'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => splash8()),
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
            Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Image.asset(
                      'assets/archery.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 50),
                    Text(
                        'Your goals are within reach!',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Achieve significant results with small, realistic goal! Let's create the most suitable yoga plan for you!",
                        style: TextStyle(
                            fontSize: 15,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
            )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: MediaQuery.of(context).size.width - 40,
              child: ElevatedButton(
                onPressed: () {
                  // Chuyển đến trang tiếp theo khi nút được nhấn
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => splash9()), // Thay NextPage bằng tên trang tiếp theo của bạn
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Màu nền của nút là đen
                  padding: EdgeInsets.symmetric(vertical: 15), // Padding cho nút
                ),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white, // Màu chữ là trắng
                    fontSize: 18,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
