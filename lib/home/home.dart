import 'package:final_project/constants/colors.dart';
import 'package:final_project/home/widget/active_course.dart';
import 'package:final_project/home/widget/feature_course.dart';
import 'package:final_project/screens/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: false,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'CoursEasy',
                style: TextStyle(
                    fontSize: 20,
                    color: kFont,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage() ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, right: 7),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: kFontLight.withOpacity(0.3), width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    'assets/profile.png',
                    width: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Card(
                  color: Colors.black,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Ink.image(
                        image:
                            Image.asset('assets/diskon.png', fit: BoxFit.cover)
                                .image,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          'Ramadhan Sale!!!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 14,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: kPrimary,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Buy Courses Now',
                            style: TextStyle(color: kFont),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
    );
  }
}
