import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    decoration: InputDecoration(
                      hintText: "USERNAME",
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
                      hintText: "USERNAME",
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
                      hintText: "USERNAME",
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
                      hintText: "USERNAME",
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

                  Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text("Register"),
                      color: Colors.blueGrey[400],
                      onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}