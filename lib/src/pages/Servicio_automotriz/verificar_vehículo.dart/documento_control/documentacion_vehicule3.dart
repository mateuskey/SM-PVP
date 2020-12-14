import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/providers/Firestore/documentacion_vehicule3.dart';
import 'package:proyecto/src/utils/constants.dart';


class DocumentacionVehicule3 extends StatefulWidget {
  @override
  _DocumentacionVehicule3State createState() => _DocumentacionVehicule3State();
}

class _DocumentacionVehicule3State extends State<DocumentacionVehicule3> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Documetos vehiculo 3");
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
          FirebaseDocumentacionVehicule3(),
          _texto(),
          _imagen(),
        ],
      ),
    );
  }

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Text('Documento vehículo',
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
      padding: const EdgeInsets.all(50.0),
      child: Container(
        // height: 1.0,
        width: 300.0,
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/images/monitoreo_comp/vehicule/camaro-amarillo.png'),
      
      ),
    );
  }
}