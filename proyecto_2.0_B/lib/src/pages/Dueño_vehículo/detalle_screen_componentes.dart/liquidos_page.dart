import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:adobe_xd/pinned.dart';
import 'package:proyecto/src/providers/Firestore/monitoreo_l%C3%ADquidos_lista.dart';
import 'package:proyecto/src/utils/constants.dart';

class LiquidosPage extends StatefulWidget {
  @override
  _LiquidosPageState createState() => _LiquidosPageState();
}

class _LiquidosPageState extends State<LiquidosPage> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completado");
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
          ListaMonitoreoLiquidos(),
          _texto(),
          _imagen(),
          _porcentaje1(),
          _porcentaje2(),
          _porcentaje3(),

        ],
      ),
    );
  }

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      alignment: Alignment.topCenter,
      child: Text('Líquidos',
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
      padding: const EdgeInsets.symmetric(horizontal: 65.0, vertical: 55.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset('assets/images/monitoreo_comp/liquidos.jpg', 
          width: 270.0,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _porcentaje1(){
  // Adobe XD layer: 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 170.0,bottom: 220.0, right: 600.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 340.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 130.0, 209.0, 15.0),
              size: Size(10.0, 15.0),
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
            padding: const EdgeInsets.only(bottom: 325.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 130.0, 300.0, 0.0),
              size: Size(120.0, 15.0),
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
  
  Widget _porcentaje2(){
  // Adobe XD layer: 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 170.0,bottom: 280.0, right: 600.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 240.0, 209.0, 15.0),
              size: Size(10.0, 15.0),
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
            padding: const EdgeInsets.only(bottom: 265.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 240.0, 300.0, 0.0),
              size: Size(95.0, 15.0),
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

  Widget _porcentaje3(){
  // Adobe XD layer: 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 150.0,bottom: 365.0, right: 600.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 215.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 360.0, 209.0, 15.0),
              size: Size(10.0, 15.0),
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
            padding: const EdgeInsets.only(bottom: 200.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 360.0, 300.0, 0.0),
              size: Size(160.0, 15.0),
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