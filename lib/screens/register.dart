import 'package:flutter/material.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  String user;
  String password;
  String email;
  String tel;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("สมัครสมาชิก")
      ),
          body: Container(
             color: Colors.blue[50],




             
            child : Center(
        child: Column(
          children: [
          Container(
           

           child: TextField(
              /*onChanged: (value) {
                setState(() {
                  user = value;
                });
              },*/
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                labelText: 'Username',
                hintText: 'Enter Username',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[600]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey[100],
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextField(
              /*onChanged: (value) {
                setState(() {
                  password = value;
                });
              },*/
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.keyboard),
                labelText: 'Password',
                hintText: 'Enter Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[600]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey[100],
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextField(
             /* onChanged: (value) {
                setState(() {
                  email = value;
                });
              },*/
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                labelText: 'Email',
                hintText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[600]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey[100],
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextField(
             /* onChanged: (value) {
                setState(() {
                  tel = value;
                });
              },*/
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Phon Number',
                hintText: 'Phon Number',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[600]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey[100],
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          FlatButton(
            //validateTextField(context),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("ตกลง"),
            color: Colors.blueAccent[200],
            textColor: Colors.white,
          ),
        ]),
      ),
          ),
    );
  }
}