import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ListaMonitoreoAmortiguadores extends StatefulWidget {
  @override
  _ListaMonitoreoAmortiguadoresState createState() => _ListaMonitoreoAmortiguadoresState();
}

class _ListaMonitoreoAmortiguadoresState extends State<ListaMonitoreoAmortiguadores> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      .collection('monitoreo_amortiguadores').doc('RZQiHgJrloRRxpu62tfw',);

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
              .collection('monitoreo_amortiguadores')
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
                        padding: const EdgeInsets.only(right: 120.0, top: 230.0, left: 70.0),
                        child: new Text('Amortiguador delantero: ' + document['Amortiguador_delantero' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                        
                        ),//Amortiguadores
                      Padding(
                        padding: const EdgeInsets.only(right: 120.0, top: 100.0, left: 70.0),
                        child: new Text('Amortiguador trasero: ' + document['Amortiguador_trasero' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, top: 170.0, left: 70.0),
                        child: new Text(document['Recomendación' ], style: TextStyle(
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
