import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uas/animations/imageAnimation.dart';
import 'package:flutter_uas/forms/login.dart';
import 'package:flutter_uas/forms/signup.dart';
import 'package:route_transitions/route_transitions.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListView(
            // even space distribution
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    child: TextLiquidFill(
                      text: 'Selamat Datang',
                      boxHeight: 110,
                      waveColor: Colors.blueAccent,
                      boxBackgroundColor:
                          const Color.fromARGB(250, 250, 250, 250),
                      textStyle: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Aplikasi Edukasi Yang Mengenalkan Berbagai Macam Masakan Tradisional Suku Madura ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ImageAnimation(),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => slideRightWidget(
                      newPage: Login(),
                      context: context,
                    ),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Masuk",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  // creating the signup button
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => slideRightWidget(
                      newPage: const Signup(),
                      context: context,
                    ),
                    color: const Color(0xff0095FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
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
