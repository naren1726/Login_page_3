import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool signInForm;
  @override
  void initState() {
    super.initState();
    signInForm = true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () async {
        if (!signInForm) {
          setState(() {
            signInForm = true;
          });
          return false;
        } else {
          // ignore: unnecessary_statements
          true;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: kToolbarHeight),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 80,
                height: 80,
              ),
              SizedBox(height: 10),
              // ignore: deprecated_member_use
              RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 38, vertical: 15),
                  child: Text("Continue with google"),
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {}),
              SizedBox(
                height: 10,
              ),
              AnimatedSwitcher(
                child: signInForm ? LoginForm() : SignupForm(),
                duration: Duration(milliseconds: 200),
              ),

              SizedBox(height: 15),
              // ignore: deprecated_member_use
              OutlineButton(
                  textColor: Colors.white,
                  borderSide: BorderSide(color: Colors.white),
                  child: signInForm
                      ? Text(
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      : Icon(Icons.arrow_back),
                  onPressed: () {
                    setState(
                      () => signInForm = !signInForm,
                    );
                  }),
            ]),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  final FocusNode passwordField = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "email address"),
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(passwordField);
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            focusNode: passwordField,
            decoration: InputDecoration(labelText: "passward"),
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(passwordField),
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "confirm password"),
          ),
          SizedBox(height: 20),
          // ignore: deprecated_member_use
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Text("Login"),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {}),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  final FocusNode passwordField = FocusNode();
  final FocusNode confirmpasswordField = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "SignUp",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(labelText: "email address"),
            onEditingComplete: () {
              FocusScope.of(context).requestFocus(passwordField);
            },
          ),
          SizedBox(height: 10),
          TextFormField(
            focusNode: passwordField,
            decoration: InputDecoration(labelText: "passward"),
            onEditingComplete: () =>
                FocusScope.of(context).requestFocus(confirmpasswordField),
          ),
          SizedBox(height: 10),
          TextFormField(
            focusNode: confirmpasswordField,
            decoration: InputDecoration(labelText: "confirm password"),
          ),
          SizedBox(height: 20),
          // ignore: deprecated_member_use
          RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Text("Create account"),
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {}),
        ],
      ),
    );
  }
}
