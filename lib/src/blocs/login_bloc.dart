import 'dart:async';
import 'package:proyecto/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators {

  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  //final _nombreController   = BehaviorSubject<String>();
  //final _apellidoController = BehaviorSubject<String>();

  //Recuperar los datos del stream
  Stream<String> get emailStream => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);
  //Stream<String> get nombreStream => _nombreController.stream.transform(validarNombre);
  //Stream<String> get apellidoStream => _apellidoController.stream.transform(validarApellido);  

  //combinar 2 cuadros
  Stream<bool> get formValidStream =>
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);

  Stream<bool> get formValidStream2 =>
      Observable.combineLatest2(emailStream, passwordStream, (a, b) => true);



  //gets
  //Insertar valor al Stream
  Function(String) get changeEmail    => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  //Function(String) get changeNombre   => _nombreController.sink.add;
  //Function(String) get changeApellido => _apellidoController.sink.add;

  //ultimo valor ingresado a los streams
    String get email    => _emailController.value;
    String get password => _passwordController.value;
    //String get nombre   => _nombreController.value;
    //String get apellido => _apellidoController.value;
    

  dispose() {
    _emailController?.close();
    _passwordController?.close();
    //_nombreController?.close();
    //_apellidoController?.close();
  }
}
