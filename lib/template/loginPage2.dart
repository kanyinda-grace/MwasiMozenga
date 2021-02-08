
import 'package:flutter/material.dart';
import 'package:mwasimozoto/template/chargement.dart';
import 'package:mwasimozoto/template/onBoardingImageCliper2.dart';
class LoginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  bool enCoursDeChargement = false;

  @override
  Widget build(BuildContext context) {
    return enCoursDeChargement ? Chargement() :  Scaffold(
            body: Column(
              children: <Widget>[
                ClipPath(
                  clipper: OnBoardingImageCliper2(),
                  child: Container(
                    height: 380,
                    width: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0,
                          left: 0,
                          top: 0,
                          bottom: 0,
                          child: Image.asset(
                            'assets/logo2.jpg',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            height: 200,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 32.0, top: 8.0, left: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'BELAFRIKA',
                            style: Theme.of(context)
                                .textTheme
                                .display1
                                .copyWith(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w900),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'En vous connectant avec votre compte Google, BelAfrika va utiliser '
                          'les information de ce dernier',
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        MaterialButton(
                          onPressed: (){},

                           
                          color: Colors.redAccent,
                          child: Text(
                            'CONNEXION AVEC GOOGLE',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          );
  }
}
