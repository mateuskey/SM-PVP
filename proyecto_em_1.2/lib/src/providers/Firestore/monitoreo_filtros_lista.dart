import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ListaMonitoreoFiltros extends StatefulWidget {
  @override
  _ListaMonitoreoFiltrosState createState() => _ListaMonitoreoFiltrosState();
}

class _ListaMonitoreoFiltrosState extends State<ListaMonitoreoFiltros> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      //por componentes
      .collection('monitoreo_filtros').doc('Lu8DTmfVJXKL6DYbQ1ZY',);

  @override
  Widget build(BuildContext context) {
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
        child: Stack(
          children: [
            StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('monitoreo_filtros')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView(
              children: snapshot.data.docs.map((document) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Column(
                    children: <Widget>[
                      //Amortiguadores
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0, top: 230.0, left: 75.0),
                        child: new Text('Filtro de aire: ' + document['Filtro_de_aire' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, top: 80.0, left: 75.0),
                        child: new Text('Filtro de combustible: ' + document['Filtro_de_combustible' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 60.0, top: 80.0, left: 75.0),
                        child: new Text('Filtro de habitáculo: ' + document['Filtro_de_habitáculo' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),  

                      Padding(
                        padding: const EdgeInsets.only(right: 60.0, top: 80.0, left: 75.0),
                        child: new Text('Recomendación: ' + document['Recomendación' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellow[700],
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ), 
                    ],
                  ),
                );
              }).toList(),
            );
          }),
          ],
        ),
      ),
    );
  }
}
