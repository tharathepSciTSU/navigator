import 'package:flutter/material.dart';
import 'package:navigator/screens/homepage.dart';
import 'package:navigator/screens/register.dart';

class Login extends StatefulWidget {
  final String title;
  const Login({Key key, this.title}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
 /* String user;
  String password;*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        //decoration: boxDe,
     color: Colors.blue[50],
     
        
       child : Center(
        child: Column(
        
          children: [
            Container(
              child: TextField(
               /* onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },*/
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    labelText: 'Username',
                    hintText: 'Enter Username',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[600],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey[100],
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            Container(
              child: TextField(
              
                /*onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },*/
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue[600],
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blueGrey[100],
                    ))),
              ),
              width: 280,
              padding: EdgeInsets.all(16),
            ),
            
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
              child: Text("เข้าสู่ระบบ"),
              color: Colors.blue[500],
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Text("สมัครสมาชิก"),
              //color: Colors.blue[500],
              textColor: Colors.blueGrey[600],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
