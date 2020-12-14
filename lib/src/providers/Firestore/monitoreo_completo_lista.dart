import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ListaMonitoreoCompleto extends StatefulWidget {
  @override
  _ListaMonitoreoCompletoState createState() => _ListaMonitoreoCompletoState();
}

class _ListaMonitoreoCompletoState extends State<ListaMonitoreoCompleto> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      .collection('monitoreo_completo').doc('1bYXIVat773RUJtidvJ1',);

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
              .collection('monitoreo_completo')
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
                        padding: const EdgeInsets.only(right: 250.0, top: 100.0),
                        child: new Text('Líquidos: ' + document['Líquidos' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                        
                        ),//Amortiguadores
                      Padding(
                        padding: const EdgeInsets.only(right: 250.0, top: 50.0),
                        child: new Text('Neumáticos: ' + document['Neumáticos' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0, top: 50.0, left: 5.0),
                        child: new Text('Amortiguadores: ' + document['Amortiguadores' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 280.0, top: 40.0, left: 20.0),
                        child: new Text('Frenos: ' + document['Frenos' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 280.0, top: 60.0, left: 20.0),
                        child: new Text('Filtros: ' + document['Filtros' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ), 
                      Padding(
                        padding: const EdgeInsets.only(right: 240.0, top: 60.0, left: 20.0),
                        child: new Text('Distribución: ' + document['Distribución' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
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
