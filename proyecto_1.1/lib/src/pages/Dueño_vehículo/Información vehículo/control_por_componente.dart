import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ControlComponentesPage extends StatefulWidget {
  @override
  _ControlComponentesPageState createState() => _ControlComponentesPageState();
}

class _ControlComponentesPageState extends State<ControlComponentesPage> {
  @override
  Widget build(BuildContext context) {

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
          _botonResLiquido(),
          _botonResNeumatico(),
          _botonResAmortiguador(),
          _botonResFrenos(),
          _botonResFiltros(),
          _botonResCorreadistribucion(),
  
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
      padding: const EdgeInsets.only(top: 80.0),
      alignment: Alignment.topCenter,
      child: Text('Resultado más reciente por componente',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _botonResLiquido(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 150.0, left: 150.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Líquidos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadoliq');
        },
      ),
    );
  }

  Widget _botonResNeumatico(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 220.0, left: 145.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Neumáticos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadoneu');
        },
      ),
    );
  }

  Widget _botonResAmortiguador(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 290.0, left: 135.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Amortiguadores"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadoamorti');
        },
      ),
    );
  }
  
  Widget _botonResFrenos(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 360.0, left: 160.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Frenos"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadofrenos');
        },
      ),
    );
  }

  Widget _botonResFiltros(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 430.0, left: 160.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Filtros"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadofiltros');
        },
      ),
    );
  }

  Widget _botonResCorreadistribucion(){

    return Padding(
      padding: const EdgeInsets.only(right: 30.0, top: 500.0, left: 120.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(20.0),
        child: new Text("Correa de distribución"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'resultadocorrea');
        },
      ),
    );
  }
}