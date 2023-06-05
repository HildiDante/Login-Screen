import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/main.dart';
import 'package:my_app/widgetsRegistre/create_Account.dart';
import 'package:my_app/widgetsRegistre/forgot_password.dart';
import 'package:my_app/widgetsRegistre/list_Widget.dart';
import 'package:my_app/widgetsRegistre/logout_Registre.dart';
import '../widgetsLogin/logout_Login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Container(
             decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                    stops: [0.20, 1],
                    colors: [
                      Color.fromARGB(209, 2, 0, 1),
                      Color(0xFF137089),
                    ],
                  )
                ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600, maxHeight: 600),
                child: Container(
                  width:MediaQuery.of(context).size.width*0.8,
                  height:MediaQuery.of(context).size.height*0.8,
                  padding: const EdgeInsets.all(48),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: ListView(
                  children: <Widget>[
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Text('Cadastro', style: TextStyle(color: Colors.white70, fontSize: 40, fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40,),
                     registerUser('Nome', false, Icon(Icons.person_outlined,color: Colors.white70,),),
                    const SizedBox(height: 25,),
                     registerUser('E-mail', false, Icon(Icons.email_outlined,color: Colors.white70,),),
                    const SizedBox(height: 25,),
                     registerUser('Senha', true, Icon(Icons.lock_outlined,color: Colors.white70,),),
                    const SizedBox(height: 25,),
                     registerUser('Confirmar Senha', true, Icon(Icons.lock_outlined,color: Colors.white70,),),

                    const SizedBox(
                      height: 20,
                    ),
                    createAccount(),

                    Padding(
                      padding: EdgeInsets.only(top:17.0),
                      child: MediaQuery.of(context).size.width>=450?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidgettwo(context),
                      ):Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidgettwo(context),
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ),
          ),
        ), 
      );
    }
  }

