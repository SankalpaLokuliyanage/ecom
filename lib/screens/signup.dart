import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  

  @override
  State<SignUp> createState() => _SignUpState();
}


final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 220,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Register", style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),)
                    ],
                  ),
                ),
              
                SizedBox(
                  height: 20,
                ),
              
                Container(
                  height: 400,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        validator: (value) {
                          if(value!.length < 6) {
                            return "Username is Too Short";
                          }
                          else if(value == "") {
                            return "Please Fill username";
                          }
                          return "";
                        },
                        decoration: InputDecoration(
                          hintText: "USERNAME",
                          
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
              
                      TextFormField(
                        validator: (value) {
                          if(value == "") {
                            return "Please fill email";
                          } else if (!regExp.hasMatch(value!)){
                            return "Email Invalid";
                          } return "";
                        },
                        decoration: InputDecoration(
                          hintText: "EMAIL",
                          
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
              
                      TextFormField(
                        validator: (value) {
                          if(value == "") {
                            return "Please fill password";
                          } else if (value!.length < 8){
                            return "Password is too short";
                          } return "";
                        },
                        decoration: InputDecoration(
                          hintText: "PASSWORD",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: Icon(Icons.visibility, color: Colors.black,),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
              
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "PHONE NUMBER",
                          
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
              
                      Container(
                        height: 45,
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text("Register"),
                          color: Colors.blueGrey[400],
                          onPressed: () {}),
                      ),
                      Row(
                        children: [
                          Text("I Have Already An Account!"),
                          SizedBox(width: 10,),
                          GestureDetector(child: Text("LOGIN",
                          style: TextStyle(color: Colors.cyan,
                          fontSize: 20, fontWeight: FontWeight.bold),),),
                        ]
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}