import 'package:flutter/material.dart';
import 'package:yoga/splash5.dart';

class splash4 extends StatefulWidget {
  const splash4({Key? key});

  @override
  _splash4State createState() => _splash4State();
}

class _splash4State extends State<splash4> {
  List<bool> isSelectedList =
      List.filled(6, false); // Danh sách lưu trạng thái của các lựa chọn

  @override
  Widget build(BuildContext context) {
    bool isAnyOptionSelected = isSelectedList.contains(
        true); // Kiểm tra xem có ít nhất một lựa chọn được chọn hay không

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
                MaterialPageRoute(builder: (context) => splash5()),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'What motivates you the most?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            GoalOption(
              title: 'Lose weight',
              icon: Icons.fitness_center,
              isSelected: isSelectedList[0], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[0] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            GoalOption(
              title: 'Get shaped',
              icon: Icons.accessibility_new,
              isSelected: isSelectedList[1], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[1] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            GoalOption(
              title: 'Stay young',
              icon: Icons.favorite,
              isSelected: isSelectedList[2], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[2] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            GoalOption(
              title: 'Prepare for events',
              icon: Icons.event,
              isSelected: isSelectedList[3], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[3] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            GoalOption(
              title: 'Improve health',
              icon: Icons.security,
              isSelected: isSelectedList[4], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[4] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            GoalOption(
              title: 'Sleep better',
              icon: Icons.nightlight_round,
              isSelected: isSelectedList[5], // Truyền trạng thái của lựa chọn
              onSelected: (isSelected) {
                setState(() {
                  isSelectedList[5] =
                      isSelected; // Cập nhật trạng thái của lựa chọn
                });
              },
            ),
            // Tương tự với các GoalOption khác
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isAnyOptionSelected
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                splash5()), // Điều hướng đến splash5
                      );
                    }
                  : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (states) {
                    if (states!.contains(MaterialState.disabled)) {
                      return Colors.grey; // Màu nền xám khi nút bị vô hiệu hóa
                    }
                    return Colors.black; // Màu nền đen khi nút được kích hoạt
                  },
                ),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  color: isAnyOptionSelected
                      ? Colors.white
                      : Colors.white70, // Màu chữ trắng hoặc xám
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoalOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function(bool) onSelected;

  const GoalOption({
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(
            !isSelected); // Gửi lại trạng thái của lựa chọn khi nó được nhấn
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(
                color: isSelected ? Colors.purple : Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: isSelected ? Colors.purple : Colors.grey),
                  SizedBox(width: 10),
                  Text(title,
                      style: TextStyle(
                          color: isSelected ? Colors.purple : Colors.grey)),
                ],
              ),
              isSelected
                  ? Icon(Icons.check_circle_rounded, color: Colors.purple)
                  : Icon(Icons.check_circle_rounded, color: Colors.grey),
              // Hiển thị biểu tượng đánh dấu nếu lựa chọn được chọn
            ],
          ),
        ),
      ),
    );
  }
}
