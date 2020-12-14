import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:adobe_xd/pinned.dart';
import 'package:proyecto/src/utils/constants.dart';

class LiquidosPage extends StatefulWidget {
  @override
  _LiquidosPageState createState() => _LiquidosPageState();
}

class _LiquidosPageState extends State<LiquidosPage> {
  @override
  Widget build(BuildContext context) {

    // final arg = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text('Sistema monitoreo PVP', style: TextStyle(fontFamily: 'Times new roman',)),
        backgroundColor: gradientStartColor,
      ),
      body: Stack(
        children: [
          // Text(arg),
          _fondoapp(),
          _texto(),
          _imagen(),
          _textoLiquido1(),
          _porcentaje1(),
          _textoLiquido2(),
          _porcentaje2(),
          _textoLiquido3(),
          _porcentaje3(),

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
        // child: IconButton(
        //   icon: Image.asset('assets/images/monitoreo_comp/vehicule/liquidos.png', cacheHeight: 25),
        //   onPressed: (){

        //   },
        // ),
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

  Widget _textoLiquido1(){

    return Container(
      padding: const EdgeInsets.only(top: 240.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Aceite: Lubricación del motor estable con un 60%.',
            style: TextStyle(
              fontFamily: 'Times new roman',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
            ),
          ),

          ],
          
        ),
      ),
    );
  }

  Widget _porcentaje1(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 70.0, top: 160.0,bottom: 155.0, right: 600.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 50.0, bottom: 415.0),
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
          padding: const EdgeInsets.only(bottom: 400.0),
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

  Widget _textoLiquido2(){

    return Container(
      padding: const EdgeInsets.only(top: 350.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Líquido de frenos: Eficiencia de frenado en un 80%.',
            style: TextStyle(
              fontFamily: 'Times new roman',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
            ),
          ),
          

          ],
          
        ),
      ),
    );
  }
  
  Widget _porcentaje2(){
  // Adobe XD layer: 'Porcentaje 1' (group)
  return Padding(
    padding: const EdgeInsets.only(left: 70.0, top: 160.0,bottom: 155.0, right: 600.0),
    child: Stack(
      children: <Widget>[
        
        Padding(
          padding: const EdgeInsets.only(left: 50.0, bottom: 415.0),
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
          padding: const EdgeInsets.only(bottom: 400.0),
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

  Widget _textoLiquido3(){

    return Container(
      padding: const EdgeInsets.only(top: 460.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Líquido de dirección: Dirección asistida hidráulica 50%.',
              style: TextStyle(
                fontFamily: 'Times new roman',
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _porcentaje3(){
  // Adobe XD layer: 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, top: 160.0,bottom: 155.0, right: 600.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 415.0),
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
            padding: const EdgeInsets.only(bottom: 400.0),
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