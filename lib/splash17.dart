import 'package:flutter/material.dart';
import 'package:ruler_picker_bn/ruler_picker_bn.dart';
import 'package:yoga/splash18.dart';

class splash17 extends StatefulWidget {
  const splash17({Key? key}) : super(key: key);

  @override
  State<splash17> createState() => _splash17State();
}

class _splash17State extends State<splash17> {
  double _currentHeightCm = 170;
  double _currentHeightFt = 5.5;
  bool _isMetric = true;

  void _convertHeight(bool isMetric) {
    if (isMetric) {
      _currentHeightFt = _currentHeightCm / 30.48;
    } else {
      _currentHeightCm = _currentHeightFt * 30.48;
    }
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
                MaterialPageRoute(builder: (context) => splash18()),
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
          children: <Widget>[
            Text(
              "What's your height?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ToggleButtons(
              children: <Widget>[
                Text('cm'),
                Text('ft'),
              ],
              isSelected: [_isMetric, !_isMetric],
              onPressed: (int index) {
                setState(() {
                  _isMetric = index == 0;
                  _convertHeight(_isMetric);
                });
              },
            ),
            // RotatedBox(
            //   quarterTurns: 3,
            //   child: Slider(
            //     value: _isMetric ? _currentHeightCm : _currentHeightFt,
            //     min: _isMetric ? 100 : 3,
            //     max: _isMetric ? 250 : 8,
            //     divisions: _isMetric ? 150 : 50,
            //     onChanged: (double value) {
            //       setState(() {
            //         if (_isMetric) {
            //           _currentHeightCm = value;
            //           _convertHeight(true);
            //         } else {
            //           _currentHeightFt = value;
            //           _convertHeight(false);
            //         }
            //       });
            //     },
            //   ),
            // ),
            Expanded(
              child: SizedBox(
                width: 75,
                height: 200,
                child: RulerPicker(
                  onChange: (val) {
                    setState(() {
                      _currentHeightCm = val as double;
                    });
                  },
                  background: Colors.white,
                  lineColor: Colors.black,
                  direction: Axis.vertical,
                  startValue: 70,
                  maxValue: 200,
                ),
              ),
            ),
            Text(
              'Your height: ${_isMetric ? _currentHeightCm.round().toString() + ' cm' : _currentHeightFt.toStringAsFixed(1) + ' ft'}',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to next screen or perform action
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
