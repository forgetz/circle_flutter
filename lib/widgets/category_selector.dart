import 'package:circle/screen/circle_screen.dart';
import 'package:circle/screen/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Circle', 'Contact', 'Messages'];

  int get index => selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;

                  if (index == 0) {
                    Get.off(CircleScreen());
                  } else if (index == 2) {
                    Get.off(MessageScreen());
                  } else {
                    Get.snackbar(
                      'Hi',
                      'i am a simple yet easy to use snackbar',
                    );
                  }
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
