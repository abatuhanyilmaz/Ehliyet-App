import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PraticalQuestion extends StatelessWidget {
  static const routeName = '/pratical-question';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1e2633),
      appBar: AppBar(
        backgroundColor: Color(0xFF1e2633),
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.white,
        ),
        title: Text(
          'PRATİK PANELİ',
          style: TextStyle(
            color: Color(0xFFFD9F00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'What shoul you do before making a U-turn?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.question_answer_sharp),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Question(
                    option: 'A',
                    question: 'Lorem ipsum dolor sit amet',
                  ),
                  Question(
                    option: 'B',
                    question: 'Lorem ipsum dolor sit amet',
                  ),
                  Question(
                    option: 'C',
                    question: 'Lorem ipsum dolor sit amet',
                  ),
                  Question(
                    option: 'D',
                    question: 'Lorem ipsum dolor sit amet',
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomMenu(
                  icon: FontAwesomeIcons.backward,
                  title: 'Geri',
                ),
                BottomMenu(
                  icon: FontAwesomeIcons.flag,
                  title: 'Bayrak',
                ),
                BottomMenu(
                  icon: Icons.translate,
                  title: 'Çevir',
                ),
                BottomMenu(
                  icon: FontAwesomeIcons.forward,
                  title: 'İleri',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  BottomMenu({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Question extends StatelessWidget {
  final String option;
  final String question;

  Question({
    this.option,
    this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                option,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
