import 'package:flutter/material.dart';

class GenderOption extends StatefulWidget {
  final String title;
  final String imagePath; // Đường dẫn đến hình ảnh
  final Function(bool) onSelected;
  final bool isSelected;

  const GenderOption({
    required this.title,
    required this.imagePath,
    required this.onSelected,
    required this.isSelected,
  });

  @override
  _GenderOptionState createState() => _GenderOptionState();
}

class _GenderOptionState extends State<GenderOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSelected(!widget.isSelected);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(
                    color: widget.isSelected ? Colors.purple : Colors.grey,
                    width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(widget.imagePath, height: 120, width: 120),
                      Center(
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              color: widget.isSelected
                                  ? Colors.purple
                                  : Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              color: widget.isSelected ? Colors.purple : Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: widget.isSelected
                ? Icon(Icons.check, color: Colors.white, size: 20)
                : Icon(Icons.check, color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }
}
