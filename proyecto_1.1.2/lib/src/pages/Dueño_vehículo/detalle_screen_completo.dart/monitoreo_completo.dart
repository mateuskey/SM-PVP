import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/detalle_screen_completo.dart/sprite.dart';
import 'package:proyecto/src/utils/constants.dart';


class CompletoPage extends StatefulWidget {
  @override
  _CompletoPageState createState() => _CompletoPageState();
}

class _CompletoPageState extends State<CompletoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: gradientStartColor,
      ),
      body: Stack(
        children: [
          _fondoapp(),
          _texto(),
          _imagen(),
          _botonesmedio(),

          // BotonEscanear(),
        ],
      ),
    );
  }

  Widget _fondoapp() {
    return Scaffold(
      backgroundColor: primaryTextColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.8),
              end: FractionalOffset(0.0, 2.0),
              colors: [
                Color.fromRGBO(5, 70, 101, 1.0),
                Color.fromRGBO(5, 37, 57, 1.0)
              ]),
        ),
      ),
    );
  }

  Widget _texto() {
    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Text(
        'Monitoreo Completo',
        style: TextStyle(
            fontFamily: 'Times new roman',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _botonesmedio() {

    return Positioned(
      child: GestureDetector(
        onTap: () {
          
        },
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 150.0, top: 480.0, left: 150.0),
                child: ListView(
                  children: [
                    SizedBox(height: 100.0),
                    RaisedButton(
                      animationDuration: Duration(milliseconds: 20),
                      splashColor: Colors.blueAccent,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: new Text(
                        "Escanear",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      color: Colors.yellow,
                      onLongPress: () {
                        Navigator.pushNamed(context, 'cargada');
                      },
                      onPressed: () {
                        print("Escaneando vehículo....");
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imagen() {
    return Padding(
      padding: const EdgeInsets.only(left: 55.0, bottom: 120.0),
      child: Container(
        // height: 1.0,
        width: 300.0,
        padding: const EdgeInsets.all(60.0),
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/images/monitoreo_comp/vehicule/chevy.png'),
      ),
    );
  }

}



class Votonesmedio extends StatelessWidget {
  final double ctrl;
  final double anim;
  final Function onTap;
  final double chx;

  const Votonesmedio({Key key, this.ctrl, this.anim, this.onTap, this.chx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: (10.0) * (0.4) + 24,
      left: (w - w * 0.33) / 2,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 240),
        opacity: 1 < 0.8 ? 0 : 1,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            child: Stack(
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(right: 150.0, top: 550.0, left: 150.0),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 240),
                  top: (w * 0.33 - 12) / 2 * (1),
                  left: 0,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 100),
                    opacity: 1,
                    child: Container(
                      child: Text(
                        "Presiona para escanear",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.purple[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                // ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 240),
                  bottom: (w * 0.33 - 18) / 2,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 100),
                    opacity: 1,
                    child: Container(
                      width: w * 0.33,
                      child: Text(
                        "Escaneando",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.lightGreen[100],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Sprite(
                  frameWidth: 10.0,
                  frameHeight: 10.0,
                  frame: 50,
                  anim: 2.0,
                  img: "assets/images/monitoreo_comp/vehicule/switch.png",
                ),
                // Padding(
                // padding: const EdgeInsets.only(right: 150.0, top: 450.0, left: 150.0),
                //   child: ListView(
                //     children: [
                //       SizedBox(height: 100.0),
                //       RaisedButton(
                //         animationDuration: Duration(milliseconds: 20),
                //         splashColor: Colors.blueAccent,
                //         elevation: 8,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(32.0),
                //         ),
                //         padding: EdgeInsets.all(20.0),
                //         child: new Text("Escanear", style: TextStyle( fontSize: 12.0),),
                //         color: Colors.yellow,
                //         onPressed: () {
                //           // Navigator.pushNamed(context, 'componentes');
                //         },
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
