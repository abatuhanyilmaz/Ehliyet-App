import 'package:ehliyet_kursu/screens/pratical_question.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Results extends StatelessWidget {
  static const routeName = '/results';

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
          'SONUÇLAR',
          style: TextStyle(
            color: Color(0xFFFD9F00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chart gelecek',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '32/20 Soru Cevapladınız.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.grey,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView.builder(
                itemBuilder: (ctx, i) {
                  return ListTile(
                    leading: Text('01'),
                    title: Text('Lorem ipsumn dolor sit amet'),
                    trailing: Icon(
                      Icons.done,
                      color: Colors.green,
                    ),
                  );
                },
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
                  icon: Icons.menu,
                  title: 'Tümü',
                ),
                BottomMenu(
                  icon: FontAwesomeIcons.flag,
                  title: 'Bayrak',
                ),
                BottomMenu(
                  icon: Icons.done,
                  title: 'Doğru',
                ),
                BottomMenu(
                  icon: Icons.cancel,
                  title: 'Yanlış',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
