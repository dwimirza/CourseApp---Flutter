import 'package:final_project/constants/colors.dart';
import 'package:flutter/material.dart';

class ModulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        elevation: 1,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
        title: Text(
          'Module Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Text(
              "Before You Start",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/modul.jpg',
                )),
          ),
          Text(
            "Material",
            style: TextStyle(
              fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}
