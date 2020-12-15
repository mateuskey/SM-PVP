import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class FirebaseDocumentacionVehicule3 extends StatefulWidget {
  @override
  _FirebaseDocumentacionVehicule3State createState() => _FirebaseDocumentacionVehicule3State();
}

class _FirebaseDocumentacionVehicule3State extends State<FirebaseDocumentacionVehicule3> {

  final DocumentReference documentReference = FirebaseFirestore.instance
      .collection('vehículo_documento').doc('7g1BRzEsgzgwHja4pwrP',);

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
              .collection('vehículo_documento')
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

                      Padding(
                        padding: const EdgeInsets.only(right: 120.0, top: 120.0, left: 0.0),
                        child: new Text('Marca: ' + document['marca' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellowAccent,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 150.0, top: 30.0, left: 25.0),
                        child: new Text('Modelo: ' + document['modelo' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellowAccent,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 190.0, top: 30.0, left: 10.0),
                        child: new Text('Año: ' + document['año' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellowAccent,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 130.0, top: 30.0, left: 50.0),
                        child: new Text('Nr_motor: ' + document['nr_motor' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellowAccent,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 60.0, top: 30.0, left: 35.0),
                        child: new Text('Nr_chasis: ' + document['nr_chasis' ], style: TextStyle(
                          fontFamily: 'Times new roman',
                          color: Colors.yellowAccent,
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
