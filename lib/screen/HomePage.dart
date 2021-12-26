import 'package:custom_training/Home.dart';
import 'package:custom_training/model/custom_model.dart';
import 'package:custom_training/widget/customTraining.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('HomePage'),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: listTesing.map((e) {
          return CumtomTraining(
            testingModel: e,
            onTapCard: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Home(
                            testingModel: e,
                          )));
            },
          );
        }).toList()),
      ),
    );
  }
}
