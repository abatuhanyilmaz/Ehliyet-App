import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoadSigns extends StatelessWidget {
  static const routeName = '/road-signs';
  final List<String> images = [
    'sign1',
    'sign1',
    'sign1',
  ];
  final List<String> titles = ['Lorem ipsum', 'Lorem ipsum', 'Lorem ipsum'];
  final List<String> description = [
    'Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit',
    'Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit',
    'Lorem ipsum dolor sit ametLorem ipsum dolor sit amet Lorem ipsum dolor sit',
  ];
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
            'YOL TABELALARI',
            style: TextStyle(
              color: Color(0xFFFD9F00),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (ctx, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color(0xFF1e2633),
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  side: BorderSide(color: Colors.grey.shade800, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          child: Image.asset(
                            'assets/images/${images[i]}.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          height: 10,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        titles[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFD9F00),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Text(
                          description[i],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
