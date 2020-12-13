import 'package:flutter/material.dart';
import 'package:proyecto/src/blocs/login_bloc.dart';
import 'package:proyecto/src/blocs/provider.dart';
import 'package:proyecto/src/providers/usuario_provider.dart';
import 'package:proyecto/src/utils/utils.dart';

class CrearCuentaPage extends StatefulWidget {

  @override
  _CrearCuentaPageState createState() => _CrearCuentaPageState();
}

class _CrearCuentaPageState extends State<CrearCuentaPage> {

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
                SizedBox(height: 05.0),
                _backbuton(),
                _loginForm(context),
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

  Widget _backbuton() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          },
        ),
      ],
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
            height: 50.0,
          )),
          Container(
            width: size.width * 0.85,
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
                Text('Crear Cuenta', style: TextStyle(fontSize: 20.0)),
                SizedBox(height: 30.0),
                _crearEmail(bloc),
                SizedBox(height: 30.0),
                _password(bloc),
                SizedBox(height: 30.0),
                _nombres(bloc),
                SizedBox(height: 30.0),
                _apellidos(bloc),
                SizedBox(height: 30.0),
                _inputRegistrar(bloc)
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
              errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail,
          ),
        );
      },
    );
  }

  Widget _nombres(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.nombreStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle, color: Colors.blueAccent),
              hintText: 'Nombres',
              hintStyle: TextStyle(fontSize: 15),
              labelText: 'Nombres',
              labelStyle: TextStyle(fontSize: 15),
              errorText: snapshot.error
            ),
            onChanged: bloc.changeNombre,
          ),
        );
      },
    );
  }

  Widget _apellidos(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.apellidoStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle, color: Colors.blueAccent),
              hintText: 'Apellidos',
              hintStyle: TextStyle(fontSize: 15),
              labelText: 'Apellidos',
              labelStyle: TextStyle(fontSize: 15),
              errorText: snapshot.error
            ),
            onChanged: bloc.changeApellido,
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
                counterText: snapshot.data,
                errorText: snapshot.error),
            onChanged: bloc.changePassword,
          ),
        );
      },
    );
  }

  Widget _inputRegistrar(LoginBloc bloc) {

    return StreamBuilder(
      stream: bloc.formValidStream2,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
              child: Text('Registrar'),
            ),
            splashColor: Colors.blueAccent,
            shape: StadiumBorder(),
            elevation: 0.0,
            color: Colors.blueAccent,
            onPressed: snapshot.hasData ? () => _register(bloc, context) : null);
      },
    );
  }

  _register(LoginBloc bloc, BuildContext context) async{
    
    final info = await usuarioProvider.nuevoUsuario(bloc.email, bloc.nombre, bloc.apellido, bloc.password);

    if (info['ok']) {
      Navigator.pushReplacementNamed(context, 'login');
    } else {
      mostrarAlerta(context, info['mensaje']);

    }
    // Navigator.pushNamed(context, 'login');
  }
}
