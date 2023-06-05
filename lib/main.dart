  import 'package:flutter/material.dart';
import 'package:my_app/widgetsLogin/list_widgetts.dart';
import 'package:my_app/widgetsLogin/login_Account.dart';
import 'package:my_app/widgetsLogin/logout_Login.dart';
import 'package:my_app/login/registre.dart';
import 'package:my_app/widgetsRegistre/forgot_password.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        home: MyHomePage(title:''),
        
      );
    }
  }

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required this.title});


    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {

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
                constraints: const BoxConstraints(maxWidth: 700, maxHeight: 700),
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
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.1,
                      height:MediaQuery.of(context).size.height*0.25,
                      child: Image.network('https://icons.veryicon.com/png/o/internet--web/prejudice/user-128.png',color:Colors.white70,
                      ),
                    ),

                    SizedBox(height:MediaQuery.of(context).size.height*0.01),

                    emailFuction('E-mail', false, Icon(Icons.email_outlined,color: Colors.white70,),), 
                    const SizedBox(height: 20,),
                    emailFuction('Senha', true,Icon(Icons.lock_outlined,color: Colors.white70,),),
                    
                    forgotPassword(context),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    loginAccount(),
                    
                    Padding(
                      padding: EdgeInsets.only(top:17.0),
                      child: MediaQuery.of(context).size.width>=450?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidget(context),
                      ):Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:listWidget(context),
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

