
import 'package:final_project/models/material.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(course.imageUrl, fit: BoxFit.cover),
                  )),
            ],
          ),
          Positioned(
            top: 30,
            left: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
