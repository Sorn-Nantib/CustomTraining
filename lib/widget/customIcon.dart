import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  final IconData? iconData;
  final Color? color;
  final Function? onTap;
  CustomIcon({Key? key, this.iconData, this.color,this.onTap}) : super(key: key);

  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
        ),
        child: Icon(widget.iconData),
      ),
    );
  }
}
