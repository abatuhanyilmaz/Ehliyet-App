import 'package:ehliyet_kursu/screens/real_question.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RealTest extends StatelessWidget {
  static const routeName = '/real-test';
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
          style:
              TextStyle(color: Color(0xFFFD9F00), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/realTest.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RealTestCard(
                    icon: FontAwesomeIcons.clock,
                    minute: '60',
                    title: 'Dakika',
                  ),
                  RealTestCard(
                    icon: FontAwesomeIcons.questionCircle,
                    minute: '50',
                    title: 'Soru',
                  ),
                  RealTestCard(
                    icon: FontAwesomeIcons.pencilAlt,
                    minute: '10',
                    title: 'Konu',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              onPressed: () => Navigator.of(context).pushNamed(
                RealQuestion.routeName,
              ),
              color: Color(0xFF86e469),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                child: Text(
                  'BAŞLA',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RealTestCard extends StatelessWidget {
  final IconData icon;
  final String minute;
  final String title;

  RealTestCard({this.icon, this.minute, this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            side: BorderSide(
              color: Colors.grey.shade700,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Color(0xFFFD9F00),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        minute,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFD9F00),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFFFD9F00),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
