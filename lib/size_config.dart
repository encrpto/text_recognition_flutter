import 'package:flutter/widgets.dart';


class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}


const jPrimaryColor = Color(0xffFF0000);
const jPurple=Color(0xff7A1FA1);
const jBlue = Color(0xff1974E9);
const jGrey =Color(0xffF2F3F5);
const jWhite = Color(0xffffffff);
const jBlack = Color(0xff3A3B3F);
const jGold = Color(0xffFFD700);
const jDrawer = Color(0xff303030);
double sizeH = SizeConfig.blockSizeHorizontal;
double sizeV =SizeConfig.blockSizeVertical;