import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text("Login"),
                      color: Colors.grey,
                      onPressed: () {
                        validation();
                      }),
    );
  }
}