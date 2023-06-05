import 'package:flutter/material.dart';

registerUser(String text, bool isObscure, Icon icone){
  return TextFormField(
    style: TextStyle(color: Colors.white),
    keyboardType: TextInputType.text,
    obscureText: isObscure,
    decoration: InputDecoration(
      suffixIcon:icone,
      labelText: text,
      enabledBorder: UnderlineInputBorder(      
      borderSide: BorderSide(color: Colors.white70),   
      ),  
      focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white70),
      ),  
      labelStyle: TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      )
    ),
  );
}

