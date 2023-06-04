import 'package:flutter/material.dart';
import 'package:flutter_learn/Widgets/image_widgets.dart';
import 'package:flutter_learn/utils/colors.dart';
import 'package:flutter_learn/utils/context_extension.dart';
import 'package:flutter_learn/utils/text_util.dart';

class splash extends StatefulWidget {
  const splash ({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainbackgraund,
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.1),
          vertical: context.dynamicHeight(0.02),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width > 600 ? 500 : 317,
                  width: MediaQuery.of(context).size.width > 600 ? 400 : 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ProjectImages().splash),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                ProjectTexts.projectname,
                style: TextStyle(
                  color: Colors.white,
                  wordSpacing: 2,
                  fontSize: MediaQuery.of(context).size.width > 600 ? 48 : 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 20),
              Text(
                ProjectTexts.defText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.subcolor,
                  fontSize: MediaQuery.of(context).size.width > 600 ? 16 : 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal,
                  wordSpacing: 0.5,
                ),
              ),
              SizedBox(height: 45),
              buildCircle(),
              SizedBox(height: 45),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {
                    // Butona basıldığında yapılacak işlemler
                  },
                  icon: const Icon(
                    Icons.arrow_right_alt,
                    color: AppColors.buttoncolor,
                    size: 37,
                  ),
                ),
              ),
              //SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Row buildCircle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 5, backgroundColor: AppColors.circlecolor),
        SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: 21,
            height: 8,
            color: AppColors.rectanglecolor,
          ),
        ),
        SizedBox(width: 10),
        CircleAvatar(radius: 5, backgroundColor: AppColors.circlecolor),
      ],
    );
  }
}
