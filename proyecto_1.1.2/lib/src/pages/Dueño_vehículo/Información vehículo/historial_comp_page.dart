import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class Historial extends StatefulWidget {
  @override
  _HistorialState createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
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
          _bodyData(),
        ],
      ),
    );
  }

  Widget _bodyData() => Padding(
    padding: const EdgeInsets.only(top: 120.0),
    child: DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 1,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text('Nro', style: TextStyle(color: Colors.white)),
          numeric: true,
          onSort: (i, b) {},
        ),
        DataColumn(
          label: Text('Fecha Monitoreo', style: TextStyle(color: Colors.white)),
          numeric: false,
          onSort: (i, b) {},
        ),
        DataColumn(
          label: Text('Estado', style: TextStyle(color: Colors.white)),
          numeric: false,
          onSort: (i, b) {},
        ),
      ],
      rows: <DataRow>[

      ],
    ),
  );

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

  Widget _texto() {
    return Container(
      padding: const EdgeInsets.only(top: 100.0),
      alignment: Alignment.topCenter,
      child: Text(
        'Información vehículo',
        style: TextStyle(
            fontFamily: 'Times new roman',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
  
}

class Name {
  int nro;
  DateTime fechaMonitoreo;

  Name({this.nro, this.fechaMonitoreo});
}

var names = <Name>[
  Name(nro: 1, fechaMonitoreo: 'yMMd'),
  Name(nro: 2, fechaMonitoreo: "Tewari"),
];
