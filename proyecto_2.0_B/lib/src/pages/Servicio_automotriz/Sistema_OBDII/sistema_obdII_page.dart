import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class SistemaObdIIpage extends StatefulWidget {
  @override
  SistemaObdIIpageState createState() {
    return new SistemaObdIIpageState();
  }
}

class SistemaObdIIpageState extends State<SistemaObdIIpage> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Sistema Obd");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: gradientStartColor,
      ),
      body: Container(
        child: Stack(
          children: [
            _fondoapp(),
            _texto(),
            _bodyData(),
            _textoEliminarOBDII(),
            _textoActualizarOBDII(),
            _botonEliminarOBDII1(),
            _botonActualizarOBDII1(),
            _botonEliminarOBDII2(),
            _botonActualizarOBDII2(),
            _botonEliminarOBDII3(),
            _botonActualizarOBDII3(),
            
          ] 
        ),
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
      child: Text('Sistema OBD II',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _bodyData() => Padding(
    padding: const EdgeInsets.only(top: 150.0, left: 0.0,),
    child: DataTable(
        onSelectAll: (b) {},
        sortColumnIndex: 1,
        sortAscending: true,
        columns: <DataColumn>[
          DataColumn(
            label: Text('Nro', 
              style: TextStyle(
                fontFamily: 'Times new roman',
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
              ),
            ),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.nro.compareTo(b.nro));
              });
            },
          ),
          DataColumn(
            label: Text('Marca vehículo',
            style: TextStyle(
                fontFamily: 'Times new roman',
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold
              ),
            ),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.marca.compareTo(b.marca));
              });
            },
            tooltip: "To display last name of the Name",
          ),
          
        ],
        rows: names
            .map(
              (name) => DataRow(
                    cells: [
                      DataCell(
                        Text(name.nro.toString(),
                          style: TextStyle(
                            fontFamily: 'Times new roman',
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ), 
                        ),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.marca,
                          style: TextStyle(
                            fontFamily: 'Times new roman',
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold
                          ), 
                        ),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                    ],
                  ),
            )
            .toList()),
  );

  Widget _textoEliminarOBDII(){

    return Container(
      padding: const EdgeInsets.only(top: 170.0, left: 200),
      alignment: Alignment.topCenter,
      child: Text('Eliminar',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 12.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _textoActualizarOBDII(){

    return Container(
      padding: const EdgeInsets.only(top: 165.0, left: 330, right: 20),
      alignment: Alignment.topCenter,
      child: Text('Actualizar',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 12.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _botonEliminarOBDII1(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 195.0, left: 270.0),
      child: FloatingActionButton(
        heroTag: null,
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.close_outlined),
        ),
        onPressed: () => _mostrarAlertaElimnar(context),
      ),
    );
  }

  Widget _botonActualizarOBDII1(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 195.0, left: 330.0),
      child: FloatingActionButton(
        heroTag: null,
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.update_outlined),
        ),
        onPressed: () => _mostrarAlertaActualizar(context),
      ),
    );
  }

  Widget _botonEliminarOBDII2(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 252.0, left: 270.0),
      child: FloatingActionButton(
        heroTag: null,
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.close_outlined),
        ),
        onPressed: () => _mostrarAlertaElimnar(context),
      ),
    );
  }

  Widget _botonActualizarOBDII2(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 252.0, left: 330.0),
      child: FloatingActionButton(
        heroTag: null,
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.update_outlined),
        ),
        onPressed: () => _mostrarAlertaActualizar(context),
      ),
    );
  }
  
  Widget _botonEliminarOBDII3(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 308.0, left: 270.0),
      child: FloatingActionButton(
        heroTag: null,
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.close_outlined),
        ),
        onPressed: () => _mostrarAlertaElimnar(context),
      ),
    );
  }

  Widget _botonActualizarOBDII3(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 308.0, left: 330.0),
      child: FloatingActionButton(
        
        elevation: 10,
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Icon(Icons.update_outlined),
        ),
        onPressed: () => _mostrarAlertaActualizar(context),
      ),
    );
  }

  void _mostrarAlertaElimnar(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Eliminación'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Se le elminará el plan de OBD II del vehículo, y ya no se sincronizará.'),
              Image.asset('assets/images/monitoreo_comp/vehicule/obd-ii.png', 
                fit: BoxFit.cover,
                  
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Eliminar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  void _mostrarAlertaActualizar(BuildContext context) {

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Actualización'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Se actualizará la nueva acutalización del sistema OBD II del vehículo.'),
              Image.asset('assets/images/monitoreo_comp/vehicule/obd-ii.png', 
                fit: BoxFit.cover,
                  
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Actualizar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

}

class Name {
  int nro;
  String marca;

  Name({this.nro, this.marca});
}

var names = <Name>[
  Name(nro: 1, marca: 'Chevrolet'),
  Name(nro: 2, marca: 'Citroën'),
  Name(nro: 3, marca: 'Chevrolet'),
];