import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ListaMonitoreoFrenos extends StatefulWidget {
  @override
  _ListaMonitoreoFrenosState createState() => _ListaMonitoreoFrenosState();
}

class _ListaMonitoreoFrenosState extends State<ListaMonitoreoFrenos> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      //por componentes
      .collection('monitoreo_frenos').doc('KSl6f7tE2z3qYZHvpONg',);

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
              .collection('monitoreo_frenos')
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
                        padding: const EdgeInsets.only(right: 100.0, top: 250.0, left: 75.0),
                        child: new Text('Disco de freno: ' + document['Disco_de_freno' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, top: 310.0, left: 75.0),
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
