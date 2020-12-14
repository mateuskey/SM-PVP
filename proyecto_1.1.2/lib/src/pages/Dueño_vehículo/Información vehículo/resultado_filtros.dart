import 'package:flutter/material.dart';

import 'dart:ui';
import 'package:adobe_xd/pinned.dart';
import 'package:proyecto/src/utils/constants.dart';

class ResultadoFiltros extends StatefulWidget {
  @override
  _ResultadoFiltrosState createState() => _ResultadoFiltrosState();
}

class _ResultadoFiltrosState extends State<ResultadoFiltros> {
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
          _fondoapp(),
          _texto(),
          _imagen(),
          _textoFiltro1(),
          _porcentaje1(),
          _textoFiltro2(),
          _porcentaje2(),
          _textoFiltro3(),
          _porcentaje3(),
          _textoAmortiguador3(),
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

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      alignment: Alignment.topCenter,
      child: Text('Resultados anteriores de filtros',
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
        child: Image.asset('assets/images/monitoreo_comp/filtros.jpg', 
          width: 270.0,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _textoFiltro1(){

    return Container(
      padding: const EdgeInsets.only(top: 250.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Filtro de aire: Se encuentra en un 40%, se recomienda un cambio.',
              style: TextStyle(
              fontFamily: 'Times new roman',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
              ),
            ) ,
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
            bounds: Rect.fromLTWH(0.0, 150.0, 209.0, 15.0),
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
            bounds: Rect.fromLTWH(0.0, 150.0, 300.0, 0.0),
            size: Size(180.0, 15.0),
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

  Widget _textoFiltro2(){

    return Container(
      padding: const EdgeInsets.only(top: 380.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Filtro de combustible: Se encuentra en un 60%.',
              style: TextStyle(
              fontFamily: 'Times new roman',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
              ),
            ) ,
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
            bounds: Rect.fromLTWH(0.0, 270.0, 209.0, 15.0),
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
            bounds: Rect.fromLTWH(0.0, 270.0, 300.0, 0.0),
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

  Widget _textoFiltro3(){

    return Container(
      padding: const EdgeInsets.only(top: 510.0, right: 110.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Filtro de habitáculo: Se encuentra en un 80%.',
              style: TextStyle(
              fontFamily: 'Times new roman',
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold
              ),
            ) ,
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
            bounds: Rect.fromLTWH(0.0, 400.0, 209.0, 15.0),
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
            bounds: Rect.fromLTWH(0.0, 400.0, 300.0, 0.0),
            size: Size(90.0, 15.0),
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

  Widget _textoAmortiguador3(){

    return Container(
      padding: const EdgeInsets.only(top: 670.0, right: 60.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Se recomienda revisar los filtros entre 10.000 y 15.000 km',
              style: TextStyle(
                fontFamily: 'Times new roman',
                color: Colors.amberAccent,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }

}