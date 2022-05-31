import 'package:final_project/home/widget/category_title.dart';
import 'package:final_project/home/widget/course_item.dart';
import 'package:final_project/home/widget/leadership_item.dart';
import 'package:final_project/models/material.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final coursesList = Course.generateCourses();
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of The Week', 'View all'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 300,
              child:Row(children: [
                CourseItem(coursesList[0]),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: LeadershipCourseItem(coursesList[1]),
                )
              ],)
            ),
          )
        ],
      ),
    );
  }
}