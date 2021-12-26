import 'package:custom_training/widget/customcircl.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

bool ischeck = false;

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          color: const Color(0xffDA7A7D),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Image.network(
            'https://i.pinimg.com/originals/2a/52/6a/2a526a05e163a1e4333e4cd8043d7084.png',
            cacheHeight: 100,
          ),
          const Text('Happy Marry chrismas day'),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircle(
                icon: Icons.ac_unit,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.favorite_sharp),
              const SizedBox(
                width: 10,
              ),
              ischeck == false
                  ? CustomCircle(
                      onTapCircle: () {
                        setState(() {
                          ischeck = true;
                        });
                      },
                      icon: Icons.access_alarm,
                      color: Colors.pink,
                    )
                  : CustomCircle(
                      onTapCircle: () {
                        setState(() {
                          ischeck = false;
                        });
                      },
                      icon: Icons.accessibility,
                      color: Colors.white,
                    ),
            ],
          )
        ],
      ),
    );
  }
}
