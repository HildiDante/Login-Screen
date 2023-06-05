import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../recoverPassword/initial.dart';

forgotPassword(BuildContext context){
  return Container(
                      height: 50,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                      child: Text("Esqueceu sua senha?",style: TextStyle(color: Colors.white),),
                      
                      onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) =>  RecoverPassword()
                         )));
                      },
                      ),
                    );
}