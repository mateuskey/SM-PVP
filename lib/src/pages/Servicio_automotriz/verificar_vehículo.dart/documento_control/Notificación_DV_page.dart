import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:proyecto/src/utils/constants.dart';

class NotificacionaDuenoPage extends StatefulWidget {
  NotificacionaDuenoPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NotificacionaDuenoPageState createState() =>
      new _NotificacionaDuenoPageState();
}

class _NotificacionaDuenoPageState extends State<NotificacionaDuenoPage> {
  var _emailFormKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController messageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new RepaintBoundary(
      child: new Scaffold(
      appBar: new AppBar(
        backgroundColor: gradientStartColor,
      ),
      body: new Center(
        
        child: Container(
          child: Stack(
            children: <Widget>[
              _fondoapp(),
              _texto(),
              _ingresoMail(),
              _textoinferior(),
              _ingresoMensaje(),
              _enviarMensaje(),
            ],
          ),
        ),
      ),
    ));
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
      padding: const EdgeInsets.only(top: 50.0),
      alignment: Alignment.topCenter,
      child: Text(
        'Ayuda por modelo',
        style: TextStyle(
            fontFamily: 'Times new roman',
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _textoinferior() {
    return Container(
      padding: const EdgeInsets.only(top: 100.0, right: 50.0, left: 70.0),
      alignment: Alignment.topCenter,
      child: Container(
        child: Stack(
          children: [
            Text(
              'Se enviará una notificación vía email al usuario dueño vehículo.',
              style: TextStyle(
                  fontFamily: 'Times new roman',
                  color: Colors.amberAccent,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _ingresoMail() {
    
    return Form(
      child: 
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 170.0, left: 15.0, right: 15.0),
              child: TextFormField(
              controller: emailController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Ingrese email";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Ingrese email",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  )
                )
              ),
            ),
            ),
          ],
        ),
    );
  }

  Widget _ingresoMensaje() {

    return Form(
      child: 
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 250.0, left: 15.0, right: 15.0),
              child: TextFormField(
              controller: messageController,
              validator: (value) {
                if (value.isEmpty) {
                  return "Porfavor ingresar mensaje";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Ingresar mensaje",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  )
                )
              ),
            ),
            ),
          ],
        ),
    );
  }

  Widget _enviarMensaje(){

    return Form(
      key: _emailFormKey,
      child: Container(
        margin: EdgeInsets.only(top: 350.0, left: 150.0),
        child: RaisedButton(child: Text("Enviar"), onPressed: (){
          if(_emailFormKey.currentState.validate()){
            sendMessage();
          }
        }),
      ),
    );
  }

  void sendMessage(){
   String inputEmail ;
   String inputMessage;
   Email email ;
   setState(() {
   inputEmail= emailController.text;
   inputMessage = messageController.text;
   if(inputMessage.isNotEmpty&&inputEmail.isNotEmpty) {
       email = Email(
       body: inputMessage,
       subject: 'Email subject',
       recipients: [inputEmail],
     );
     send(email);
    }

   });
  debugPrint('email - > $inputEmail  message -> $inputMessage');

  }
  void send(Email email) async {
  await FlutterEmailSender.send(email);
 }
}
