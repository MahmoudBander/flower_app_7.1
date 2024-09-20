// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flower_app/pages/register.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flower_app/shared/customs_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              MyTextField(
                textinputtype: TextInputType.emailAddress,
                hinttext: "Enter your Email : ",
                ispassword: false,
              ),
              const SizedBox(
                height: 45,
              ),
              MyTextField(
                textinputtype: TextInputType.text,
                hinttext: "Enter your password : ",
                ispassword: true,
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text(
                  "Sign in",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do not have an account? ",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                        Navigator.pushReplacement(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Register()
                          ));
                    },
                    child:
                        Text(' Sign in ', style: TextStyle(color: Colors.black,fontSize: 20)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
