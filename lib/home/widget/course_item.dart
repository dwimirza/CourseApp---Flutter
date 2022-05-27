import 'package:final_project/constants/colors.dart';
import 'package:final_project/models/material.dart';
import 'package:final_project/screens/detail_page.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  CourseItem(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: kPrimary, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Hero(
                      tag: 'tes',
                      child: Image.asset(
                        course.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  course.authorImg,
                                  width: 20,
                                )),
                            SizedBox(width: 5),
                            Text(
                              course.author,
                              style: TextStyle(fontSize: 12, color: kFont),
                            )
                          ],
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(fontSize: 15, color: kFont, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            Text('2h 13min',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: kFontLight
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                 primary: kAccent,
                 elevation: 0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15)
                 )
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(course)));
              },
              child: Text('Start'),
            ),
          )
        ],
      ),
    );
  }
}
