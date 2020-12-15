import 'dart:ui';

import 'package:adobe_xd/pinned.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/providers/Firestore/monitoreo_completo_lista.dart';
import 'package:proyecto/src/utils/constants.dart';

class ControlVehiculoPage extends StatefulWidget {
  @override
  _ControlVehiculoPageState createState() => _ControlVehiculoPageState();
}

class _ControlVehiculoPageState extends State<ControlVehiculoPage> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Resultado más reciente cargado");
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
          ListaMonitoreoCompleto(),
          _texto(),
          _porcentaje1(),
          _porcentaje2(),
          _porcentaje3(),
          _porcentaje4(),
          _porcentaje5(),
          _porcentaje6(),
          _textocontrol(),
          _botonComponentes(),
        ],
      ),
    );
  }

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Text('Resultado más reciente',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _porcentaje1(){
  // 'Porcentaje 1' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 100.0,bottom: 230.0, right:220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 0.0, 220.0, 15.0),
              size: Size(120.0, 80.0),
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
  // 'Porcentaje 2' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 100.0,bottom: 230.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 70.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 70.0, 270.0, 15.0),
              size: Size(120.0, 80.0),
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
  // 'Porcentaje 3' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 100.0,bottom: 230.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 135.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 330.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 135.0, 300.0, 15.0),
              size: Size(120.0, 80.0),
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

  Widget _porcentaje4(){
  // 'Porcentaje 4' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 150.0,bottom: 230.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 160.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 160.0, 200.0, 15.0),
              size: Size(100.0, 80.0),
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

  Widget _porcentaje5(){
  // 'Porcentaje 5' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 150.0,bottom: 230.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 240.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 240.0, 190.0, 15.0),
              size: Size(120.0, 80.0),
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

  Widget _porcentaje6(){
  // 'Porcentaje 6' (group)
    return Padding(
      padding: const EdgeInsets.only(left: 140.0, top: 150.0,bottom: 230.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 320.0, 209.0, 15.0),
              size: Size(20.0, 80.0),
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
            padding: const EdgeInsets.only(bottom: 280.0),
            child: Pinned.fromSize(
              bounds: Rect.fromLTWH(0.0, 320.0, 240.0, 15.0),
              size: Size(120.0, 80.0),
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

  Widget _botonComponentes(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 530.0, left: 270.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: new Text("Componentes"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'controlcomp');
        },
      ),
    );
  }

  Widget _textocontrol(){

    return Container(
      padding: const EdgeInsets.only(top: 650.0, right: 80.0, left: 120.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Resultado completo del vehículo en general.',
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