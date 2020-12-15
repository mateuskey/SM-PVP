import 'dart:ui';

import 'package:adobe_xd/pinned.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/providers/Firestore/control_veh%C3%ADculo3.dart';
import 'package:proyecto/src/utils/constants.dart';


class ControlVehiculoPage3 extends StatefulWidget {
  @override
  _ControlVehiculoPage3State createState() => _ControlVehiculoPage3State();
}

class _ControlVehiculoPage3State extends State<ControlVehiculoPage3> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Control vehículo 3");
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
          ControlVehiculo3(),
          _texto(),
          _porcentaje1(),
          _porcentaje2(),
          _porcentaje3(),
          _porcentaje4(),
          _porcentaje5(),
          _porcentaje6(),
        ],
      ),
    );
  }

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Text('Control vehículo',
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
      padding: const EdgeInsets.only(left: 140.0, top: 100.0,bottom: 220.0, right:220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 340.0),
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
            padding: const EdgeInsets.only(bottom: 340.0),
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
      padding: const EdgeInsets.only(left: 140.0, top: 100.0,bottom: 220.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 340.0),
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
            padding: const EdgeInsets.only(bottom: 340.0),
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
      padding: const EdgeInsets.only(left: 140.0, top: 120.0,bottom: 200.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 340.0),
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
            padding: const EdgeInsets.only(bottom: 340.0),
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
      padding: const EdgeInsets.only(left: 140.0, top: 165.0,bottom: 170.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 325.0),
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
            padding: const EdgeInsets.only(bottom: 325.0),
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
      padding: const EdgeInsets.only(left: 140.0, top: 165.0,bottom: 150.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 345.0),
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
            padding: const EdgeInsets.only(bottom: 345.0),
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
      padding: const EdgeInsets.only(left: 140.0, top: 165.0,bottom: 150.0, right: 220.0),
      child: Stack(
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 345.0),
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
            padding: const EdgeInsets.only(bottom: 345.0),
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

}