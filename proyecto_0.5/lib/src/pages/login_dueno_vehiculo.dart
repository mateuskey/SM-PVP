// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:proyecto/src/blocs/provider.dart';
import 'package:proyecto/src/providers/usuario_provider.dart';
import 'package:proyecto/src/utils/utils.dart';

class LoginDuenoVehiculo extends StatefulWidget {
  @override
  _LoginDuenoVehiculoState createState() => _LoginDuenoVehiculoState();
}

class _LoginDuenoVehiculoState extends State<LoginDuenoVehiculo> {
  final usuarioProvider = new UsuarioProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                _contenedorMedio(),
                _loginForm(context),
                SizedBox(
                  height: 20.0,
                ),
                _crearCuenta(),
                _botonesbajos(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.8),
            end: FractionalOffset(0.0, 2.0),
            colors: [
              Color.fromRGBO(5, 70, 101, 1.0),
              Color.fromRGBO(5, 37, 57, 1.0)
            ]),
      ),
    );

    return Stack(
      children: <Widget>[gradiente],
    );
  }

  Widget _contenedorMedio() {

    return Center(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              Icon(
                Icons.directions_car,
                size: 100.0,
                color: Colors.white,
              ),
              Container(
                child: Text('Sistema monitoreo PVP',
                    style: TextStyle(
                      fontFamily: 'Times new roman',
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                    )
                ),
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 40.0),
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {

    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 10.0,
          )),
          Container(
            width: size.width * 0.85,
            // margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 3.0)
                ]),
            child: Column(
              children: <Widget>[
                Text('Ingreso', style: TextStyle(fontSize: 20.0, fontFamily: 'Times new roman')),
                SizedBox(height: 30.0),
                _crearEmail(bloc),
                SizedBox(height: 30.0),
                _password(bloc),
                SizedBox(height: 30.0),
                _inputIngresar(bloc)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearEmail(LoginBloc bloc) {
    
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                icon: Icon(Icons.alternate_email, color: Colors.blueAccent),
                hintText: 'Ejemplo@mail.com ',
                hintStyle: TextStyle(fontSize: 15),
                labelText: 'Correo electrónico',
                labelStyle: TextStyle(fontSize: 15),
                counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  Widget _password(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.blueAccent),
                hintText: 'Contraseña',
                hintStyle: TextStyle(fontSize: 15),
                labelText: 'Contraseña',
                labelStyle: TextStyle(fontSize: 15),
                // counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _inputIngresar(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              child: Text('Ingresar'),
            ),
            splashColor: Colors.blueAccent,
            shape: StadiumBorder(),
            elevation: 0.0,
            color: Colors.blueAccent,
            onPressed: snapshot.hasData ? () => _login(bloc, context) : null);
      },
    );
  }

  _login(LoginBloc bloc, BuildContext context) async {

    Map info = await usuarioProvider.login(bloc.email, bloc.password);

    if (info['ok']) {
      Navigator.pushReplacementNamed(context, 'home');
    } else {
      mostrarAlerta(context, info['mensaje']);

    }
  }

  Widget _crearCuenta() {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          child: Text('Crear Cuenta'),
          textColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, 'cuenta');
          },
        ),
      ],
    );
  }

  Widget _botonesbajos() {

    return Row(
      children: <Widget>[_modoSV(), _olvidarContrasenia()],
    );
  }

  Widget _olvidarContrasenia() {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new FlatButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.only(bottom: 10.0, left: 25.0),
          child: Text('¿Olvido la contraseña?'),
          textColor: Colors.white,
          // splashColor: Colors.blueAccent,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _modoSV() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new FlatButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text('Modo SV'),
          textColor: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
