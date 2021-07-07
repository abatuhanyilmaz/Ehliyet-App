import 'package:ehliyet_kursu/screens/anasayfa.dart';
import 'package:ehliyet_kursu/screens/forget_password.dart';
import 'package:ehliyet_kursu/screens/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  String _email, _password;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final DateTime timestamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            /* colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop), */
            image: AssetImage('assets/images/gradientLogo.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _showTitle(),
                  _showEmailInput(),
                  _showPasswordInput(),
                  _showFormActions()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showTitle() {
    return Text(
      "SÜRÜCÜ KURSU",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  _showEmailInput() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        onSaved: (val) => _email = val,
        validator: (val) => !val.contains("@") ? "Geçersiz email adresi" : null,
        decoration: InputDecoration(
          //border: OutlineInputBorder(),
          labelText: "Email",
          hintText: "Email adresinizi giriniz.",
        ),
      ),
    );
  }

  _showPasswordInput() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        onSaved: (val) => _password = val,
        validator: (val) => val.length < 6 ? "Password Is Too Short" : null,
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(
                () {
                  _obscureText = !_obscureText;
                },
              );
            },
            child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
          ),
          //border: OutlineInputBorder(),
          labelText: "Şifre",
          hintText: "Şifrenizi giriniz.",
        ),
      ),
    );
  }

  _showFormActions() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RaisedButton(
            child: Text(
              "Giriş Yap",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            color: Color(0xFF6CB657),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            ),
          ),
          FlatButton(
            child: Text('Şifremi unuttum'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ForgetPassword(),
              ),
            ),
          )
        ],
      ),
    );
  }

  _submit() {
    final _form = _formKey.currentState;
    if (_form.validate()) {
      _form.save();
      //print("Email $_email, Password $_password");

    } else {
      print("Form is Invalid");
    }
  }

  _showSuccessSnack(String message) async {
    final snackbar = SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        "$message",
        style: TextStyle(color: Colors.green),
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackbar);
    _formKey.currentState.reset();
  }

  _showErrorSnack(String message) {
    final snackbar = SnackBar(
      backgroundColor: Colors.black,
      content: Text(
        "$message",
        style: TextStyle(color: Colors.red),
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackbar);
    setState(
      () {},
    );
  }
}
