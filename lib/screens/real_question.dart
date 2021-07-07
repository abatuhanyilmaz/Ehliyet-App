import 'package:ehliyet_kursu/screens/pratical_question.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RealQuestion extends StatelessWidget {
  static const routeName = '/real-question';

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
          'GERÇEK SINAV',
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
              child: Text(
                'What should you do before making a U-turn?',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
