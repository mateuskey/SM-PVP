import 'package:flutter/material.dart';
import 'package:proyecto/src/utils/constants.dart';

class AutoayudaPage extends StatefulWidget {
  @override
  _AutoayudaPageState createState() => _AutoayudaPageState();
}

class _AutoayudaPageState extends State<AutoayudaPage> {
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
      child: Text('Autoayuda',
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
                child: new Text('Notificación servicio automotriz'),
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'notificacion');
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                padding: EdgeInsets.all(20.0),
                child: new Text('Ayuda por modelo'),
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, 'ayudamodelo');           
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
        padding: const EdgeInsets.all(30.0),
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/images/home/autoayuda.jpg'),
        
        
      ),
    );
  }
  
}