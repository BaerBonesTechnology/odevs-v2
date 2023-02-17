import 'package:flutter/material.dart';

class ViewManager{

  ViewManager(this.context);

  BuildContext context;

  // check size of screen
  bool isSmallScreen(){
    return MediaQuery.of(context).size.width < 600;
  }

  //check size of screen if medium return true
  bool isMediumScreen(){
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 960;
  }

  //check size of screen if large return true
  bool isLargeScreen(){
    return MediaQuery.of(context).size.width >= 960;
  }

  Size getScreenSize(){
    return MediaQuery.of(context).size;
  }
}