import 'package:final_project/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: kFont, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)),
                  child: Image.asset('assets/Union.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      child: Text('Jewen',
                          style: TextStyle(
                              fontSize: 23,
                              color: kFont,
                              fontWeight: FontWeight.bold,
                              )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 23),
                      child: Text(
                        'Student',
                        style: TextStyle(
                            fontSize: 15,
                            color: kFontLight,
                            fontWeight: FontWeight.normal,
                            ),
                      ),
                      ),
                  ],
                ),
              ],
            ),
          ],
    ),
      ),
    );}
  }

