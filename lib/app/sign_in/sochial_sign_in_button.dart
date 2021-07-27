import 'package:flutter/material.dart';
import 'package:newera/common_widget/customraiebutton.dart';

class SochialSignInButton extends Customraisebutton {
  SochialSignInButton(
      {String text,
      Color color,
      Color textcolor,
      VoidCallback onpressed,
      @required String asset})
      : assert(text != null),
        assert(asset != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(asset),
              Text(
                text,
                style: TextStyle(color: textcolor),
              ),
              Opacity(
                opacity: 0,
                child: Image.asset(
                  asset,
                ),
              )
            ],
          ),
          color: color,
          onpressed: onpressed,
          hight: 40,
          raduis: 16,
        );
}
