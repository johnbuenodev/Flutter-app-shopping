import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/home-page.dart';
import 'package:shopping/pages/signup-page.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return SafeArea( //area de segurança da aplicação em top e bottom
    //   child: Scaffold(
    //     body: Container(
    //       child: Text('Oi'),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFF5F5F5),
          padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
          child: Column(
            children: [
              Container(
                //color: Colors.white, remover para não dar conflito do colors do decoration
                height: 450,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1),
                ]),
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 60),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              Text('Sign in to continue'),
                            ],
                          ),
                          TextButton(
                            child: Text(
                                'Sign Up'), //NÃO CHAMAR A FUNÇÃO RESPONDER()
                            //child: Text(respostas[0]),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            }, //add valor PASSAR a função como PARAMETRO IMPORTANTE
                            //style: ,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color:
                                Theme.of(context).primaryColor, //Colors.black
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //color: Colors.blue,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: ElevatedButton(
                          child:
                              Text('Sign in'), //NÃO CHAMAR A FUNÇÃO RESPONDER()
                          //child: Text(respostas[0]),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => HomePage(),
                            //   ),
                            // );
                          }, //add valor PASSAR a função como PARAMETRO IMPORTANTE
                          style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.blue, //depreciado mas funciona ainda
                              onPrimary: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ), //NÃO CHAMAR A FUNÇÃO RESPONDER()
                          //child: Text(respostas[0]),
                          onPressed:
                              () {}, //add valor PASSAR a função como PARAMETRO IMPORTANTE
                          //style: ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/facebook.png",
                        width: 28,
                      ),
                      Text("Sign In with Facebook"),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/google.png",
                        width: 28,
                      ),
                      Text("Sign In with Google"),
                      SizedBox(
                        width: 30,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
