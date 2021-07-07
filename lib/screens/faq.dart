import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class Faq extends StatefulWidget {
  static const routeName = '/faq';

  final Widget child;
  final bool expand;

  Faq({this.child, this.expand});

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  final GlobalKey<ExpansionTileCardState> card = new GlobalKey();

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
          'SSS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          FaqCard(
            card: card,
            title: 'Uygulamayı nasıl indirebilirim?',
            description: 'Lorem ipsum dolor sit',
          ),
        ],
      ),
    );
  }
}

class FaqCard extends StatelessWidget {
  final GlobalKey<ExpansionTileCardState> card;
  final String title;
  final String description;

  FaqCard({this.card, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: ExpansionTileCard(
        key: card,
        title: Text(title),
        baseColor: Color(0xFF252d3a),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1.0,
              height: 1.0,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                description,
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
