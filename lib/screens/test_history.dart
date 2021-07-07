import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TestHistory extends StatelessWidget {
  static const routeName = '/test-history';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252d3a),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF1e2633),
        centerTitle: true,
        title: Text(
          'TEST GEÇMİŞİ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return TestHistoryCard(
            iconName: 'pratik',
            title: 'Pratik',
            date: '22.02.2021',
            ratio: '97/42',
            percent: "97%",
          );
        },
      ),
    );
  }
}

class TestHistoryCard extends StatelessWidget {
  final String iconName;
  final String title;
  final String date;
  final String ratio;
  final String percent;

  TestHistoryCard(
      {this.iconName, this.title, this.date, this.ratio, this.percent});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF252d3a),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        side: BorderSide(
          color: Colors.grey.shade700,
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$iconName.png'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  ratio,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: Text(percent),
                  progressColor: Color(0xFFFD9F00),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
