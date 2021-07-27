import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customraisebutton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onpressed;
  final double raduis;
  final double hight;

  Customraisebutton(
      {this.child, this.color, this.onpressed, this.hight, this.raduis})
      : assert(hight != null),
        assert(raduis != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      child: RaisedButton(
        color: color,
        onPressed: onpressed,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(raduis),
          ),
        ),
      ),
    );
  }
}
