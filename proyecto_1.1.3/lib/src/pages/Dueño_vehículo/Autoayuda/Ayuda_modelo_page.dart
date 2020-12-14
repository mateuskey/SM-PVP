import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto/src/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';


class AyudaModeloPage extends StatefulWidget {

  AyudaModeloPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AyudaModeloPageState createState() => new _AyudaModeloPageState();
}

class _AyudaModeloPageState extends State<AyudaModeloPage> {

  @override
  Widget build(BuildContext context) {
    return new RepaintBoundary(
      child:new Scaffold(
      appBar: new AppBar(
        backgroundColor: gradientStartColor,
      ),
      body: new Center(
        child: Container(
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _fondoapp(),
              _texto(),
              Padding(
                padding: const EdgeInsets.only(top: 170.0, left: 140.0),
                child: new RaisedButton(
                  onPressed: () => _launchURL(
                    'sistemamonitoreopvp@gmail.com', 
                    'Ayuda sistema Monitoreo', 
                    'Se precisa de ayuda por servicio automotriz correspondiente.'), 
                  child: new Text('Envío de mail'),
                ),
              ),
              _textoinferior(),

            ],
          ),
        ),
      ),
    )
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
      padding: const EdgeInsets.only(top: 80.0),
      alignment: Alignment.topCenter,
      child: Text('Ayuda por modelo',
        style: TextStyle(
          fontFamily: 'Times new roman',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget _textoinferior(){

    return Container(
      padding: const EdgeInsets.only(top: 670.0, right: 50.0, left: 100.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text('Se enviará un mail al correo sistema monitoreo PVP, en el que enviará los documentos de ayuda.',
              style: TextStyle(
                fontFamily: 'Times new roman',
                color: Colors.amberAccent,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}