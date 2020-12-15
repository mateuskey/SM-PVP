import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class ListaMonitoreoNeumaticos extends StatefulWidget {
  @override
  _ListaMonitoreoNeumaticosState createState() => _ListaMonitoreoNeumaticosState();
}

class _ListaMonitoreoNeumaticosState extends State<ListaMonitoreoNeumaticos> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      //por componentes
      .collection('monitoreo_neumático').doc('e2V7ftUwkwSAygXx4I5X',);

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
              .collection('monitoreo_neumático')
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
                        padding: const EdgeInsets.only(right: 50.0, top: 255.0, left: 75.0),
                        child: new Text('Neumático1: ' + document['Neumático1' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                        
                        ),//Amortiguadores
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0, top: 75.0, left: 75.0),
                        child: new Text('Neumático2: ' + document['Neumático2' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(right: 80.0, top: 70.0, left: 60.0),
                        child: new Text('Neumático3: ' + document['Neumático3' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),  

                      Padding(
                        padding: const EdgeInsets.only(right: 80.0, top: 70.0, left: 60.0),
                        child: new Text('Neumático4: ' + document['Neumático4' ], style: TextStyle(
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
