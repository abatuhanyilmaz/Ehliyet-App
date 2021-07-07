import 'package:ehliyet_kursu/screens/contact.dart';
import 'package:ehliyet_kursu/screens/faq.dart';
import 'package:ehliyet_kursu/screens/privacy_policy.dart';
import 'package:ehliyet_kursu/screens/profile.dart';
import 'package:ehliyet_kursu/screens/settings.dart';
import 'package:ehliyet_kursu/screens/test_history.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> butonName = ['Pratik', 'Tabelalar', 'Sınav', 'Pratik?'];

  final List<String> iconNames = [
    'pratikLogo.png',
    'tabelaLogo.png',
    'sinavLogo.png',
    'pratikLogo.png',
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
      key: _scaffoldKey,
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
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'email@email.com',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
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
                  title: Text(
                    'Anasayfa',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () =>
                      Navigator.of(context).pushNamed(TestHistory.routeName),
                  leading: Icon(FontAwesomeIcons.checkCircle),
                  title: Text(
                    'Test Geçmişi',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  ),
                  leading: Icon(FontAwesomeIcons.user),
                  title: Text(
                    'Profil',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () =>
                      Navigator.of(context).pushNamed(Setting.routeName),
                  leading: Icon(FontAwesomeIcons.solidIdBadge),
                  title: Text(
                    'Ayarlar',
                    style: TextStyle(fontSize: 17),
                  ),
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
                  child: Text(
                    'Bilgi',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed(
                    Faq.routeName,
                  ),
                  leading: Icon(FontAwesomeIcons.infoCircle),
                  title: Text(
                    'SSS',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).pushNamed(
                    PrivacyPolicy.routeName,
                  ),
                  leading: Icon(FontAwesomeIcons.infoCircle),
                  title: Text(
                    'Gizlilik Politikası',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(FontAwesomeIcons.share),
                  title: Text(
                    'Paylaş',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.exit_to_app),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/mainPic.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 50,
                      ),
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/logo.png'),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3 / 2),
                  itemBuilder: (ctx, i) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(links[i]),
                      child: CircleAvatar(
                        backgroundColor: Colors.black38,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF222231),
                          radius: 55,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${iconNames[i]}'),
                                  ),
                                ),
                              ),
                              Text(
                                butonName[i],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
