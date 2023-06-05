import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

List<Widget>listWidgettt(BuildContext context){
  return <Widget> [

    Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return MyApp();
            }),
            );
          
          },
          child: const Text('Cancelar', style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600),),
        ),
      ],
    ),
  ];
}
    