import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

List<Widget>listWidgettwo(BuildContext context){
  return <Widget> [
    const Text(
      'Já tem uma conta? ',
      style: TextStyle(color:Colors.white70, fontSize: 16),
    ),
    GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return MyApp();
        }),
        );
      
      },
      child: const Text('Login', style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600),),
    ),
  ];
}
    