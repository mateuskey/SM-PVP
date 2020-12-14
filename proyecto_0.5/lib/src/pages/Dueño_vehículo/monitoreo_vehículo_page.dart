
import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class MonitoreoPage extends StatefulWidget {

  @override
  _MonitoreoPageState createState() => _MonitoreoPageState();
}

class _MonitoreoPageState extends State<MonitoreoPage> {
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
          _botonesmedio(),
          _imagen(),
          // _botonesmedio(),
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

  Widget _texto(){

    return Container(
      padding: const EdgeInsets.only(top: 100.0),
      alignment: Alignment.topCenter,
      child: Text('Monitoreo vehículo',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _botonesmedio() {
    
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 200.0),
        child: SafeArea(
          child: ListView(
            children: [
              RaisedButton(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: new Text("Monitoreo completo"),
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'completo');
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: new Text("Monitoreo por componentes"),
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'componentes');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _imagen(){
    
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        // height: 1.0,
        width: 300.0,
        padding: const EdgeInsets.all(20.0),
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/images/home/monitoreo.jpg'),
      
      ),
    );
  }
}