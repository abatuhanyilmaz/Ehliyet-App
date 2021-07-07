import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:custom_switch/custom_switch.dart';

class Setting extends StatefulWidget {
  static const routeName = '/settings';

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool status = false;
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
          'AYARLAR',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bildirimler',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                CustomSwitch(
                  activeColor: Color(0xFFFD9F00),
                  value: status,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      status = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
