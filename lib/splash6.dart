import 'package:flutter/material.dart';
import 'package:yoga/Model/FocusAreaOption.dart';
import 'package:yoga/splash7.dart';

class splash6 extends StatefulWidget {
  const splash6({Key? key}) : super(key: key);

  @override
  State<splash6> createState() => _splash6State();
}

class _splash6State extends State<splash6> {
  String selectedGender = '';
  List<String> selectedAreas = [];
  bool isFullBodySelected = false;

  @override
  Widget build(BuildContext context) {
    bool isAnyOptionSelected =
        selectedGender.isNotEmpty || selectedAreas.isNotEmpty;

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
                MaterialPageRoute(builder: (context) => splash7()),
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
            SizedBox(height: 20),
            Text(
              "What's your focus area?",
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(height: 50),
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      FocusAreaOption(
                        label: 'Full Body',
                        isSelected: isFullBodySelected,
                        onTap: () {
                          setState(() {
                            if (isFullBodySelected) {
                              isFullBodySelected = false;
                              selectedAreas.clear();
                            } else {
                              isFullBodySelected = true;
                              selectedAreas = ['Arm', 'Chest', 'Belly', 'Leg'];
                            }
                          });
                        },
                        isFullBody: isFullBodySelected,
                      ),
                      FocusAreaOption(
                        label: 'Arm',
                        isSelected: selectedAreas.contains('Arm'),
                        onTap: () {
                          setState(() {
                            if (isFullBodySelected &&
                                selectedAreas.length == 4) {
                              isFullBodySelected = false;
                            }
                            if (selectedAreas.contains('Arm')) {
                              selectedAreas.remove('Arm');
                            } else {
                              selectedAreas.add('Arm');
                            }
                          });
                        },
                        isFullBody: isFullBodySelected,
                      ),
                      FocusAreaOption(
                        label: 'Chest',
                        isSelected: selectedAreas.contains('Chest'),
                        onTap: () {
                          setState(() {
                            if (isFullBodySelected &&
                                selectedAreas.length == 4) {
                              isFullBodySelected = false;
                            }
                            if (selectedAreas.contains('Chest')) {
                              selectedAreas.remove('Chest');
                            } else {
                              selectedAreas.add('Chest');
                            }
                          });
                        },
                        isFullBody: isFullBodySelected,
                      ),
                      FocusAreaOption(
                        label: 'Belly',
                        isSelected: selectedAreas.contains('Belly'),
                        onTap: () {
                          setState(() {
                            if (isFullBodySelected &&
                                selectedAreas.length == 4) {
                              isFullBodySelected = false;
                            }
                            if (selectedAreas.contains('Belly')) {
                              selectedAreas.remove('Belly');
                            } else {
                              selectedAreas.add('Belly');
                            }
                          });
                        },
                        isFullBody: isFullBodySelected,
                      ),
                      FocusAreaOption(
                        label: 'Leg',
                        isSelected: selectedAreas.contains('Leg'),
                        onTap: () {
                          setState(() {
                            if (isFullBodySelected &&
                                selectedAreas.length == 4) {
                              isFullBodySelected = false;
                            }
                            if (selectedAreas.contains('Leg')) {
                              selectedAreas.remove('Leg');
                            } else {
                              selectedAreas.add('Leg');
                            }
                          });
                        },
                        isFullBody: isFullBodySelected,
                      ),
                    ],
                  ),
                  Container(
                    width: 219,
                    height: 219,
                    child: Image.asset(
                      'assets/man.png',
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 30),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: isAnyOptionSelected
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      splash7()), // Điều hướng đến splash6
                            );
                          }
                        : null,
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (states) {
                          if (states!.contains(MaterialState.disabled)) {
                            return Colors
                                .grey; // Màu nền xám khi nút bị vô hiệu hóa
                          }
                          return Colors
                              .black; // Màu nền đen khi nút được kích hoạt
                        },
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                            color: isAnyOptionSelected
                                ? Colors.white
                                : Colors.white70, // Màu chữ trắng hoặc xám
                          ),
                        ),
                      ],
                    ),
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
