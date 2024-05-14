import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:wondershare/models/user.dart';
import 'package:wondershare/utils/colors.dart';
import 'package:wondershare/utils/global_variable.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:provider/provider.dart';
// import 'package:wondershare/models/user.dart' as model;

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  // model.User user = Provider.of<UserProvider>(context).getUser; 
  int _page=0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }


  void navigationTapped(int page) {
    //Animating Page
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children:homeScreenItems,
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor:appbarclr,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: (_page == 0) ? mobileBackgroundColor:primaryColor ,
            ),
            label: '',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: (_page == 1) ?  mobileBackgroundColor:primaryColor,
              ),
              label: '',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: (_page == 2) ? mobileBackgroundColor :  primaryColor,
              ),
              label: '',
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center,
              color: (_page == 3) ? mobileBackgroundColor: primaryColor,
            ),
            label: '',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: (_page == 4) ? mobileBackgroundColor: primaryColor,
            ),
            label: '',
            backgroundColor: primaryColor,
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  
}