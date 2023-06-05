import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/recoverPassword/buttonAccount.dart';
import 'package:my_app/recoverPassword/list_widget.dart';
import '../widgetsRegistre/create_Account.dart';
import '../widgetsRegistre/forgot_password.dart';
import 'logout_Recover.dart';

class RecoverPassword extends StatefulWidget {
  const RecoverPassword({super.key});

  @override
  State<RecoverPassword> createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
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
                constraints: const BoxConstraints(maxWidth: 450, maxHeight: 450),
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
                          child: Column(
                            children: [
                              Text('Esqueci minha Senha', style: TextStyle(color: Colors.white, fontSize:MediaQuery.of(context).size.height*0.031, fontWeight: FontWeight.w500),),
                              SizedBox(height: 20,),
                              Text('Para redefinir sua senha, informe o e-email cadastrado na sua conta e lhe enviaremos um link com as instruções.',style: TextStyle(color: Colors.white70, fontSize:MediaQuery.of(context).size.height*0.022,
                   fontWeight: FontWeight.w500)),
                            ],
                          ),

                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     logoutrecover('E-mail', false, Icon(Icons.email_outlined,color: Colors.white70,),),
                    const SizedBox(
                      height: 20,
                    ),
                    buttonAccount(),

                    Padding(
                      padding: EdgeInsets.only(top:17.0),
                      child: MediaQuery.of(context).size.width>=450?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidgettt(context),
                      ):Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidgettt(context),
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
