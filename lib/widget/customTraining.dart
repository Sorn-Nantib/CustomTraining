import 'package:custom_training/model/custom_model.dart';
import 'package:custom_training/widget/customIcon.dart';
import 'package:flutter/material.dart';

class CumtomTraining extends StatefulWidget {
  final TestingModel? testingModel;
  final GestureTapCallback? onTapCard;
  const CumtomTraining({Key? key, this.testingModel, this.onTapCard})
      : super(key: key);

  @override
  _CumtomTrainingState createState() => _CumtomTrainingState();
}

//bool ischeck = false;

class _CumtomTrainingState extends State<CumtomTraining> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapCard,
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            color: widget.testingModel!.color ?? Colors.amber,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
                child: Image.network(
              "${widget.testingModel!.image}",
              height: 100,
            )),
            Center(
              child: Text(
                '${widget.testingModel!.title}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    color: Colors.pink,
                    iconData: Icons.add,
                  ),
                  Text(
                    '${widget.testingModel!.subTitle}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  CustomIcon(
                    color: Colors.red,
                    iconData: Icons.access_alarm_sharp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
