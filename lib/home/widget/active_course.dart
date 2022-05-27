import 'package:final_project/constants/colors.dart';
import 'package:final_project/home/widget/category_title.dart';
import 'package:flutter/material.dart';



class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently Active', 'View all'),
          Container(
            margin: EdgeInsets.all(25),
            padding: EdgeInsets.all(10),
            decoration : BoxDecoration(
                color: kFontLight.withOpacity(0.1),
                border: Border.all(
                  color: kFontLight.withOpacity(0.3), width: 1
                ),
                borderRadius: BorderRadius.circular(8)),
                child: Row(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/progress.jpg', width: 80,),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Photography',
                            style: TextStyle(
                              fontSize: 18,
                              color: kFont,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('2 lessons left',
                            style: TextStyle(
                              fontSize: 14,
                              color: kFontLight,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: CircularProgressIndicator(
                  value: 0.3,
                  color: kAccent,
                  backgroundColor: Colors.grey,),
                      )
                    ],
                    
                  ),
                ],),
          )
        ],
      ),
    );
  }
}