// ignore_for_file: prefer_const_constructors, unused_field, non_constant_identifier_names

import 'package:drone_app/pages/login_pages/login_page.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';
import '../../components/defualt_text_field.dart';
import '../../constanst/constanst.dart';
import '../home/home_page.dart';

class SingInPage extends StatelessWidget {
  SingInPage({super.key});
  final _emailControlear = TextEditingController();
  final _passwrodControlear = TextEditingController();
  final _nameControlear = TextEditingController();
  final _confermControlear = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/dji.png',
              width: 150,
              color: kPrimryColor,
            ),
            Text(
              "SING IN",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kPrimryColor),
            ),
            SizedBox(
              height: 100,
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Defulat_Text_Field(
                      icon: Icon(Icons.person),
                      type: TextInputType.name,
                      Controlear: _nameControlear,
                      laple: "Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Defulat_Text_Field(
                      icon: Icon(Icons.email),
                      type: TextInputType.emailAddress,
                      Controlear: _emailControlear,
                      laple: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Defulat_Text_Field(
                      icon: Icon(Icons.email),
                      type: TextInputType.emailAddress,
                      Controlear: _confermControlear,
                      laple: "Confrom email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Defulat_Text_Field(
                      icon: Icon(Icons.lock),
                      type: TextInputType.visiblePassword,
                      Controlear: _passwrodControlear,
                      laple: "Password",
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have Account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Text("Login"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DefaultButton(
                      hieght: 19,
                      color: kPrimryColor,
                      deflutPadding: 150,
                      press: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                      },
                      radeus: 19,
                      text: "LOGIN",
                      textColor: kWhiteColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
