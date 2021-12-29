import 'package:ecommerce/screens/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  
  @override
  State<Login> createState() => _LoginState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);
bool obserText = true;

class _LoginState extends State<Login> {

  void validation() {
    final FormState? _form = _formKey.currentState;
    if(_form!.validate()){
      print("yes"); 
    } else {
      print("no");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Login", style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),),
                    TextFormField(
                      validator: (value) {
                          if(value == "") {
                            return "Please fill email";
                          } else if (!regExp.hasMatch(value!)){
                            return "Email Invalid";
                          } return "";
                        },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextFormField(
                      obscureText: obserText,
                        validator: (value) {
                          if(value == "") {
                            return "Please fill password";
                          } else if (value!.length < 8){
                            return "Password is too short";
                          } return "";
                        },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obserText = !obserText;
                              });
                              FocusScope.of(context).unfocus();
                            },
                            child: Icon(
                              obserText==true ?
                              Icons.visibility:Icons.visibility_off, color: Colors.black,),
                          ),
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text("Login"),
                      color: Colors.grey,
                      onPressed: () {
                        validation();
                      }),
                  ),
                  Row(
                          children: [
                            Text("I don't have An Account!"),
                            SizedBox(width: 10,),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>SignUp()));
                              },
                              child: Text("REGISTER",
                            style: TextStyle(color: Colors.cyan,
                            fontSize: 20, fontWeight: FontWeight.bold),),),
                          ]
                        ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),      
    );
  }
}