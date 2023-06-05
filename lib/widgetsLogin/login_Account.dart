import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

loginAccount(){
 return Container(
    height: 60,
    alignment: Alignment.centerLeft,
    color: Color(0xFF137089),
    child: SizedBox.expand(
      child: TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
            Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
        ],
      ),
      onPressed: () {},
    ),
    ),
  );
}