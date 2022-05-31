import 'package:final_project/constants/colors.dart';
import 'package:final_project/home/widget/custom_app_bar.dart';
import 'package:final_project/models/material.dart';
import 'package:final_project/screens/module_page.dart';
import 'package:flutter/material.dart';

class DetailLeadershipPage extends StatelessWidget {
  final Course course;
  DetailLeadershipPage(this.course);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(course),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 130, top: 15),
              child: Text(
                course.title,
                style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold, color: kFont),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 7),
              child: Row(
                children: [
                  Text(
                    'Lessons',
                    style: TextStyle(
                        fontSize: 15,
                        color: kFontLight,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        color: kFontLight, shape: BoxShape.circle),
                  ),
                  Text(
                    '2h 13min',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: kFontLight),
                  )
                ],
              ),
            ),
            ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: 7,
                indent: 15,
                endIndent: 15,
                color: kFontLight,
              ),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 10),
                    child: Text(
                      dataMaterialLeadership[index].number,
                      style: TextStyle(
                          fontSize: 50,
                          color: kFont,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            dataMaterialLeadership[index].title,
                            style: TextStyle(
                                fontSize: 17,
                                color: kFont,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 6),
                          child: Text(
                            dataMaterial[index].duration,
                            style: TextStyle(
                                fontSize: 17,
                                color: kFontLight,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: IconButton(
                       icon: Icon(
                        Icons.play_arrow_rounded,
                        color: kFont,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ModulePage()));
                      },
                    ),
                  ),
                ],
              ),
            )
          ])
        ],
      )),
    );
  }
}
