import 'dart:async';

class Validators {
  
  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp = new RegExp(pattern);

      if (regExp.hasMatch(email)) {
        sink.add(email);
      } else {
        sink.addError('Email incorrecto');
      }
    }
  );

  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
    if (password.length >= 6) {
      sink.add(password);
    }else {
      sink.addError('Error');
    }
    }
  );

  final validarNombre = StreamTransformer<String, String>.fromHandlers(
    handleData: (nombre, sink){
      Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
      RegExp regExp = new RegExp(pattern);
      
      if (regExp.hasMatch(nombre)) {
        sink.add(nombre);
      } else {
        sink.addError('Nombre no válido');
      }
    }
  );

  final validarApellido = StreamTransformer<String, String>.fromHandlers(
    handleData: (apellido, sink){
      Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
      RegExp regExp = new RegExp(pattern);
      
      if (regExp.hasMatch(apellido)) {
        sink.add(apellido);
      } else {
        sink.addError('Apellido no válido');
      }
    }
  );


}
