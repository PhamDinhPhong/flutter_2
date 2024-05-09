import 'package:flutter/material.dart';
import 'package:yoga/Model/age.dart';
import 'package:yoga/splash17.dart';

class splash16 extends StatefulWidget {
  const splash16({Key? key}) : super(key: key);

  @override
  _splash16State createState() => _splash16State();
}

class _splash16State extends State<splash16> {
  late FixedExtentScrollController _controller;
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController(initialItem: 2);
    _currentValue = _controller.initialItem;
  }

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
                MaterialPageRoute(builder: (context) => splash17()),
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.purple,
                width: 2,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Màu của bộ khung bên trong
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          NotificationListener<ScrollEndNotification>(
            onNotification: (notification) {
              // Lấy index của item trung tâm
              final centerItemIndex = _controller.selectedItem;
              // Cập nhật giá trị hiện tại
              setState(() {
                _currentValue = centerItemIndex;
              });
              return true;
            },
            child: ListWheelScrollView.useDelegate(
              itemExtent: 40,
              perspective: 0.005,
              diameterRatio: 1.0,
              physics: FixedExtentScrollPhysics(),
              controller: _controller,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 100,
                builder: (context, index) {
                  // Tính toán giá trị hiển thị
                  final displayValue = _currentValue + index - 2;
                  // Xác định màu sắc dựa trên khoảng cách với giá trị hiện tại
                  final textColor = (index == 2) ? Colors.purple : Colors.grey;
                  return MyAge(
                    age: displayValue,
                    textColor: textColor,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
