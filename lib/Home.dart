import 'package:custom_training/model/custom_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final TestingModel? testingModel;
  const Home({Key? key, this.testingModel}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Home Page'),
        actions: const [Icon(Icons.access_alarm_outlined)],
      ),
      // body: Column(
      //   children: [
      //     CustomContainer(),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     CustomContainer(),
      //     Column(
      //       children: modelList.map((e) {
      //         return ListTile();
      //       }).toList(),
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            child: Image.network("${widget.testingModel!.image}"),
          ),
          Text("${widget.testingModel!.subTitle}")
        ],
      ),
    );
  }
}
