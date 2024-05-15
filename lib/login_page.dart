import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _secretId = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaint Portal'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Secret ID',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your secret ID';
                  }
                  return null;
                },
                onSaved: (value) {
                  _secretId = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Perform login logic here
                    // Navigate to user complaints page for now
                    Navigator.pushNamed(context, '/user-complaints');
                  }
                },
                child: Text('Log In'),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to registration page
                  Navigator.pushNamed(context, '/registration');
                },
                child: Text('New to Music Lister? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}