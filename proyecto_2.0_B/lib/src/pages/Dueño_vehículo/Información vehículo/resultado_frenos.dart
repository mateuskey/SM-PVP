import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:adobe_xd/pinned.dart';
import 'package:proyecto/src/providers/Firestore/monitoreo_frenos.dart';
import 'package:proyecto/src/utils/constants.dart';

class ResultadoFrenos extends StatefulWidget {
  @override
  _ResultadoFrenosState createState() => _ResultadoFrenosState();
}

class _ResultadoFrenosState extends State<ResultadoFrenos> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Resultados de frenos cargado");
      setState(() {});
    });
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: gradientStartColor,
      ),
      body: Stack(
        children: [
          ListaMonitoreoFrenos(),
          _texto(),
          _imagen(),
          _porcentaje1(),
        ],
      ),
    );
  }

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      alignment: Alignment.topCenter,
      child: Text('Resultado anterior de frenos',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _imagen(){
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 55.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset('assets/images/monitoreo_comp/frenos.jpg', 
          width: 270.0,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _porcentaje1(){
  // Adobe XD layer: 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 110.0,bottom: 255.0, right: 600.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 365.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 200.0, 209.0, 15.0),
              size: Size(20.0, 15.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: const Color(0xffebebeb),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 350.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 200.0, 300.0, 0.0),
              size: Size(140.0, 15.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              pinBottom: true,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: const Color(0xff161513),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }

}