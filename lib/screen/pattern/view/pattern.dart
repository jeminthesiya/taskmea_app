import 'package:flutter/material.dart';

class PatternScreen extends StatefulWidget {
  const PatternScreen({Key? key}) : super(key: key);

  @override
  State<PatternScreen> createState() => _PatternScreenState();
}

class _PatternScreenState extends State<PatternScreen> {
  @override
  double sliderValue = 0.0;
  List firstList = [];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Pattern",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: EdgeInsets.only(left: 180),
                child: Center(
                  child: ListView.builder(
                    itemCount: firstList.length,
                    itemBuilder: (context, index) {
                      return Text(
                        "${firstList[index]}",
                        style: TextStyle(color: Colors.black),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Slider(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                    firstList = [];
                    for (int i = 1; i <= sliderValue.toInt(); i++) {
                      List secondList = [];
                      for (int j = 1; j <= i; j++) {
                        secondList.add(j);
                      }
                      firstList.add(secondList);
                    }
                  });
                },
                activeColor: Colors.blue,
                divisions: 5,
                inactiveColor: Colors.blue.shade50,
                min: 0.0,
                max: 5.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
