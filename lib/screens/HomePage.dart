import 'package:flutter/material.dart';
import 'package:flutter_learn/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_learn/utils/context_extension.dart';
import 'package:flutter_learn/utils/text_util.dart';
import 'package:flutter_learn/Widgets/icon_widgets.dart';
import 'package:flutter_learn/Widgets/image_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.mainbackgraund,
      appBar: buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicHeight(0.02),
          vertical: context.dynamicHeight(0.01),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildSearch(),
            SizedBox(height: screenWidth * 0.04),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildOptionButton(ProjectTexts.options1),
                  buildOptionButton(ProjectTexts.options2),
                  buildOptionButton(ProjectTexts.options3),
                  buildOptionButton(ProjectTexts.options4),
                ],
              ),
            ),
            SizedBox(height: screenWidth * 0.02),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ProjectTexts.homescreentitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: screenWidth * 0.06,
                ),
              ),
            ),
            SizedBox(height: screenWidth * 0.001),
            buildGridBox(),
        ],
      ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Expanded buildGridBox() {
    return Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 5),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildGridItemWithDescription(
                      boxColor: AppColors.podkestbox1,
                      imagePath: ProjectImages().pdk1image,
                      title: PodkesNames.podkes1,
                      description: Podcaster.podcaster1,
                    ),
                    buildGridItemWithDescription(
                      boxColor: AppColors.podkestbox2,
                      imagePath: ProjectImages().pdk2image,
                      title: PodkesNames.podkes2,
                      description: Podcaster.podcaster2,
                    ),
                  ],
            ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildGridItemWithDescription(
                          boxColor: AppColors.podkestbox3,
                          imagePath: ProjectImages().pdk3image,
                          title: PodkesNames.podkes3,
                          description: Podcaster.podcaster3,
                        ),
                        buildGridItemWithDescription(
                          boxColor: AppColors.podkestbox4,
                          imagePath: ProjectImages().pdk4image,
                          title: PodkesNames.podkes4,
                          description: Podcaster.podcaster4,
                        ),
                      ],
                    ),
              ],
            ),

      );
  }

  Widget buildGridItemWithDescription({
    required Color boxColor,
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 170,
            height: 150,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                imagePath,
                width: 150,
                height: 121,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Inter",
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 350,
        height: 53,
        decoration: BoxDecoration(
          color: AppColors.labelcolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15) +
              EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search..",
                hintStyle: const TextStyle(
                  fontSize: 16,
                ),
                border: InputBorder.none,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset(
                    AppIcons().searchIcon,
                  ),
                )),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(
    leading: IconButton(
      icon: SvgPicture.asset(
        AppIcons().seactionIcon,
        width: 22,
        height: 20,
      ),
      onPressed: () {
        // İcon'a tıklanınca yapılacak işlemler
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Notification.svg',
          width: 24,
          height: 24,
        ),
        onPressed: () {
          // İcon'a tıklanınca yapılacak işlemler
        },
      ),
    ],
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      ProjectTexts.projectname,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: "Poppins",
      ),
    ),
  );

  Widget buildOptionButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 85,
      height: 36,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.optionscolor,
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(36),
          left: Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
Widget buildBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: AppColors.labelcolor,
    selectedLabelStyle: TextStyle(fontFamily: "Inter"),
    unselectedLabelStyle: TextStyle(fontFamily: "Inter"),
    items:  <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: IconButton( icon: Image.asset(AppIcons().HomeIcon), onPressed: () {  },),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: IconButton( icon: Image.asset(AppIcons().libraryIcon), onPressed: () {  },),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: IconButton( icon: Image.asset(AppIcons().ProfileIcon), onPressed: () {  },),
        label: 'Profile',
      ),
    ],
    selectedItemColor: Colors.white, // Seçili öğe metni rengi
  );

}