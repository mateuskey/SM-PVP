import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class Verificarpage extends StatefulWidget {
  @override
  VerificarpageState createState() {
    return new VerificarpageState();
  }
}

class VerificarpageState extends State<Verificarpage> {

  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("Verificación vehículo");
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
            _botonControl1(),
            _botonControl2(),
            _botonControl3(),
            
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
      child: Text('Verificar vehículo',
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
            // tooltip: "To display first name of the Name",
          ),
          DataColumn(
            label: Text('Fecha monitoreo',
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
                names.sort((a, b) => a.fecha.compareTo(b.fecha));
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
                        Text(name.fecha,
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

  Widget _botonControl1(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 195.0, left: 270.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: new Text("Documento control"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'documento_control1');
        },
      ),
    );
  }

  Widget _botonControl2(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 250.0, left: 270.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: new Text("Documento control"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'documento_control2');
        },
      ),
    );
  }

  Widget _botonControl3(){

    return Padding(
      padding: const EdgeInsets.only(right: 20.0, top: 305.0, left: 270.0),
      child: RaisedButton(
        
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: new Text("Documento control"),textColor: Colors.white,
        color: Colors.black45,
        onPressed: () {
          Navigator.pushNamed(context, 'documento_control3');
        },
      ),
    );
  }

}

class Name {
  int nro;
  String fecha;

  Name({this.nro, this.fecha});
}

var names = <Name>[
  Name(nro: 1, fecha: '11-09-2020'),
  Name(nro: 2, fecha: '20-10-2020'),
  Name(nro: 3, fecha: '20-11-2020'),
];