import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_learn/utils/context_extension.dart';
import 'package:flutter_learn/utils/text_util.dart';
import 'package:flutter_learn/Widgets/icon_widgets.dart';
import 'package:flutter_learn/Widgets/image_widgets.dart';
import 'package:flutter_learn/screens/HomePage.dart';

class Musicpage extends StatefulWidget {
  const Musicpage({Key? key}) : super(key: key);

  @override
  State<Musicpage> createState() => _Musicpage();
}

class _Musicpage extends State<Musicpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainbackgraund,
      appBar: buildAppBar(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                width: 340,
                height: 340,
                decoration: BoxDecoration(
                  color: AppColors.podkestbox1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(ProjectImages().PDKimage),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30),
                child: Column(
                  children: [
                    const Text(
                      'The missing 96 percent of the universe',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    const Padding(
                      padding: EdgeInsets.only(right: 240),
                      child: Text(
                        'Claire Malone',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Image.asset(AppIcons().player),
                    SizedBox(height: 15,),
                    Image.asset(AppIcons().ply2),
                    SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(AppIcons().back),
                            iconSize: 45,
                          ),
                          IconButton(
                            onPressed: () {},
                            iconSize: 65,
                            icon: Image.asset(AppIcons().playicon),
                          ),
                          IconButton(
                            onPressed: () {},
                            iconSize: 45,
                            icon: Image.asset(AppIcons().fwd),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
    leading: IconButton(
      icon: SvgPicture.asset(
        AppIcons().backIcon,
        width: 28,
        height: 28,
      ),
      onPressed: () {
        // İcon'a tıklanınca yapılacak işlemler
      },
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      ProjectTexts.musicscreentitle,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        fontFamily: "Inter",
      ),
    ),
  );
}
