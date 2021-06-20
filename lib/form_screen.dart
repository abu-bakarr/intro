import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name = "";
  String _email = "";
  String _address = "";
  String _phone = "";
  String _street = "";
  String _school = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _name = value!),
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Address",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _address = value!),
    );
  }

  Widget _buildStreet() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Street",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _street = value!),
    );
  }

  Widget _buildSchool() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "School",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _school = value!),
    );
  }

  Widget _buildEmail() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
          final regExp = RegExp(pattern);

          if (value!.isEmpty) {
            return 'Enter an email';
          } else if (!regExp.hasMatch(value)) {
            return 'Enter a valid email';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) => setState(() => _email = value!),
      );

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Phone",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Phone cannot empty";
        }
      },
      onSaved: (value) => setState(() => _phone = value!),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('New Form')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Padding

              _buildName(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildPhone(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildEmail(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildAddress(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildStreet(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildSchool(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () => {
                  if (!_formKey.currentState!.validate()) {},
                  _formKey.currentState!.save(),
                  print(_name),
                  print(_email),
                  print(_address),
                  print(_phone),
                  print(_school),
                  print(_street),
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
