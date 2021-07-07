import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String name;

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
          'PROFİL',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ProfileFormField(
                    onSaved: (value) => name = value,
                    validator: (value) =>
                        value.length < 3 ? "İsim çok kısa" : null,
                    labelText: "İsim-Soyisim",
                    hintText: "İsminizi giriniz.",
                  ),
                  ProfileFormField(
                    onSaved: (value) => name = value,
                    validator: (value) =>
                        !value.contains("@") ? "Geçersiz email adresi" : null,
                    labelText: "Email adresi",
                    hintText: "Email giriniz.",
                  ),
                  ProfileFormField(
                    onSaved: (value) => name = value,
                    validator: (value) =>
                        value.length < 6 ? "Şifre çok kısa." : null,
                    labelText: "Mevcut şifre",
                    hintText: "Şifre giriniz.",
                  ),
                  ProfileFormField(
                    onSaved: (value) => name = value,
                    validator: (value) =>
                        value.length < 6 ? "Şifre çok kısa." : null,
                    labelText: "Yeni şifre",
                    hintText: "Şifre giriniz.",
                  ),
                  ProfileFormField(
                    onSaved: (value) => name = value,
                    validator: (value) =>
                        value.length < 6 ? "Şifre çok kısa." : null,
                    labelText: "Yeni şifre (Tekrar)",
                    hintText: "Şifre giriniz.",
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Onayla'),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileFormField extends StatelessWidget {
  final Function onSaved;
  final Function validator;
  final String labelText;
  final String hintText;

  ProfileFormField({
    this.onSaved,
    this.validator,
    this.labelText,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
