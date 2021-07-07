import 'package:ehliyet_kursu/screens/contact.dart';
import 'package:ehliyet_kursu/screens/faq.dart';
import 'package:ehliyet_kursu/screens/privacy_policy.dart';
import 'package:ehliyet_kursu/screens/profile.dart';
import 'package:ehliyet_kursu/screens/settings.dart';
import 'package:ehliyet_kursu/screens/test_history.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Anasayfa extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> butonName = ['Pratik', 'Tabelalar', 'Sınav', 'Pratik?'];

  final List<IconData> icons = [
    FontAwesomeIcons.accessibleIcon,
    FontAwesomeIcons.accusoft,
    FontAwesomeIcons.addressBook,
    FontAwesomeIcons.adjust,
  ];
  final List<String> links = [
    '/pratical-panel',
    '/road-signs',
    '/real-test',
    '/pratical-question',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFF222231),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          color: Color(0xFFf7a831),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('email@email.com'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    height: 5,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pop(),
                  leading: Icon(FontAwesomeIcons.home),
                  title: Text('Anasayfa'),
                ),
                ListTile(
                  onTap: () =>
                      Navigator.of(context).pushNamed(TestHistory.routeName),
                  leading: Icon(FontAwesomeIcons.checkCircle),
                  title: Text('Test Geçmişi'),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  ),
                  leading: Icon(FontAwesomeIcons.user),
                  title: Text('Profil'),
                ),
                ListTile(
                  onTap: () =>
                      Navigator.of(context).pushNamed(Setting.routeName),
                  leading: Icon(FontAwesomeIcons.solidIdBadge),
                  title: Text('Ayarlar'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    height: 5,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Text('Bilgi'),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed(
                    Faq.routeName,
                  ),
                  leading: Icon(FontAwesomeIcons.infoCircle),
                  title: Text('SSS'),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed(
                    PrivacyPolicy.routeName,
                  ),
                  leading: Icon(FontAwesomeIcons.infoCircle),
                  title: Text('Gizlilik Politikası'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(FontAwesomeIcons.share),
                  title: Text('Paylaş'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      ),
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mainPic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 1,
                        childAspectRatio: 4 / 3),
                    itemBuilder: (ctx, i) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(links[i]);
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF222231),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                icons[i],
                                size: 40,
                                color: Color(0xFFf7a831),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                butonName[i],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: butonName.length,
                  ),
                ),
              ),
              Center(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 15,
                    ),
                    child: Text(
                      'İLETİŞİM',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Contact(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
