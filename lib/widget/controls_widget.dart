import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class ControlsWidget extends StatelessWidget {
  final VoidCallback onClickedPickImage;
  final VoidCallback onClickedPickImageCam;
  final VoidCallback onClickedScanText;
  final VoidCallback onClickedClear;

  const ControlsWidget({
    @required this.onClickedPickImage,
    @required this.onClickedScanText,
    @required this.onClickedClear,
    Key key,
    this.onClickedPickImageCam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            showDialogBox(context);
          },
          child: Container(
            height: sizeH * 10,
            width: sizeH * 30,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icon/cam2.svg",
                    height: sizeH * 5,
                    color: Colors.white,
                  ),
                  Text(
                    'Pick Image',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: onClickedScanText,
          child: Container(
            height: sizeH * 10,
            width: sizeH * 20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icon/search.svg",
                    height: sizeH * 4,
                    color: Colors.white,
                  ),
                  Text(
                    'Scan',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
        GestureDetector(
          onTap: onClickedClear,
          child: Container(
            height: sizeH * 10,
            width: sizeH * 20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    "assets/icon/bin.svg",
                    height: sizeH * 4,
                    color: Colors.white,
                  ),
                  Text(
                    "Clear",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ]),
          ),
        ),
        // RaisedButton(
        //   onPressed: onClickedClear,
        //   child: Text('Clear'),
        // )
      ],
    );
  }

  void showDialogBox(BuildContext context) {
    AlertDialog payEdit = AlertDialog(
      title: Text("Add Photo"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: onClickedPickImageCam,
          ),
          IconButton(
            icon: Icon(Icons.add_photo_alternate),
            onPressed: onClickedPickImage,
          ),
        ],
      ),
      actions: [
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Done"))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return payEdit;
        });
  }
}
