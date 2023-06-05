import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/login/registre.dart';

List<Widget>listWidget(BuildContext context){
  return <Widget> [
    const Text(
      'Não possui uma conta? ',
      style: TextStyle(color:Colors.white70, fontSize: 16),
    ),
    GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return RegisterScreen();
        }),
        );

      },
      child: const Text('Cadastre-se', style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600),),
    ),
  ];
}