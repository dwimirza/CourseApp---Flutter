import 'package:final_project/home/widget/category_title.dart';
import 'package:final_project/home/widget/course_item.dart';
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
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) =>
              CourseItem(coursesList[index]), separatorBuilder: 
              (BuildContext context, index) => SizedBox(width: 15),
              )
          )
        ],
      ),
    );
  }
}