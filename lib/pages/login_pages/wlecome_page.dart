// ignore_for_file: unused_local_variable, sized_box_for_whitespace, prefer_const_constructors

import 'package:drone_app/pages/login_pages/singin_page.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';
import '../../constanst/constanst.dart';
import 'login_page.dart';

class WlemomePage extends StatelessWidget {
  const WlemomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "images/dji.png",
              width: 100,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width * 0.80,
              child: Text(
                textAlign: TextAlign.center,
                "NineTenths is a national Drone Technology Company in Saudi that specializes in providing innovative technical solutions",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: kWhiteColor),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                DefaultButton(
                  hieght: 19,
                  color: kWhiteColor,
                  text: "Login",
                  deflutPadding: 150,
                  press: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
                  },
                  radeus: 19,
                  textColor: kPrimryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                DefaultButton(
                  hieght: 19,
                  color: Color.fromARGB(255, 0, 0, 0),
                  text: "Singin",
                  deflutPadding: 149,
                  press: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => SingInPage(),
                    ));
                  },
                  radeus: 19,
                  textColor: kWhiteColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
