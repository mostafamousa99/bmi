import 'package:flutter/cupertino.dart';
import 'package:newera/common_widget/customraiebutton.dart';
import 'package:flutter/material.dart';

class Signinbutton extends Customraisebutton {
  Signinbutton(
      {String text, Color color, Color textcolor, VoidCallback onpressed})
      : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
            ),
          ),
          color: color,
          onpressed: onpressed,
          hight: 40,
          raduis: 16,
        );
}
