import 'package:flutter/material.dart';

class ForgetPasswordNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gradientLogo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Şifremi Unuttum',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFF6CB657),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(
                    'Hesap için kullandığınız e-posta adresini girin,hesabınızı sıfırlamak için e-posta adresinize parola göndereceğiz.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onSaved: (val) {},
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      labelText: "Yeni Şifre",
                      hintText: "Şifre giriniz giriniz.",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    onSaved: (val) {},
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      labelText: "Yeni Şifre (Tekrar)",
                      hintText: "Şifrenizi tekrar giriniz.",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: RaisedButton(
                    child: Text(
                      'Gönder',
                      style: TextStyle(fontSize: 18),
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    elevation: 8.0,
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
