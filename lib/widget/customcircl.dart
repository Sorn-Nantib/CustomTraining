import 'package:custom_training/model/listMomel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCircle extends StatefulWidget {
  final ListModel? listModel;
  final IconData? icon;
  final GestureTapCallback? onTapCircle;
  final Color? color;
  const CustomCircle(
      {Key? key, this.color, this.icon, this.onTapCircle, this.listModel})
      : super(key: key);

  @override
  _CustomCircleState createState() => _CustomCircleState();
}

class _CustomCircleState extends State<CustomCircle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapCircle,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(shape: BoxShape.circle, color: widget.color),
        child: Icon(widget.icon),
      ),
    );
  }
}
