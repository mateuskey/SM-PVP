import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class Verificarpage extends StatefulWidget {
  @override
  VerificarpageState createState() {
    return new VerificarpageState();
  }
}

class VerificarpageState extends State<Verificarpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: gradientStartColor,
        // title: Text("Episode 5 - Data Table"),
      ),
      body: Container(
        child: Stack(
          children: [
            _fondoapp(),
            _texto(),
            _bodyData(),
            
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
    padding: const EdgeInsets.only(top: 150.0, left: 50.0),
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
}

class Name {
  int nro;
  String fecha;

  Name({this.nro, this.fecha});
}

var names = <Name>[
  Name(nro: 1, fecha: '20-10-2020'),
  Name(nro: 2, fecha: '20-11-2020'),
  Name(nro: 3, fecha: '11-09-2020'),
];