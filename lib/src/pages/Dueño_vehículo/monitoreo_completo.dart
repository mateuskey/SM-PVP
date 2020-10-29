import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto/src/models/opciones_model.dart';
import 'package:proyecto/src/utils/constants.dart';

import 'detalle_screen_completo.dart/completo.dart';
import 'item_card.dart';

class MonitoreoCompletoPage extends StatefulWidget {
  @override
  _MonitoreoCompletoPageState createState() => _MonitoreoCompletoPageState();
}

class _MonitoreoCompletoPageState extends State<MonitoreoCompletoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Sistema monitoreo PVP', style: TextStyle(fontFamily: 'Times new roman',)),
        backgroundColor: gradientStartColor,
      ),
      body: Stack(
        children: [
          _fondoapp(),
          _texto(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GridView.builder(
                  itemCount: opciones.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.80,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    opcMonitoreo: opciones[index], 
                    press: () => Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => DetalleCompleto(
                          opcMonitoreo: opciones[index]
                        ),
                      )
                    ),
                  ),
              ),
            ),
          ),
        ],
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

  Widget _texto() {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      alignment: Alignment.topCenter,
      child: Text(
        'Monitoreo completo',
        style: TextStyle(
            fontFamily: 'Times new roman',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}