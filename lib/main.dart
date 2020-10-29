import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto/src/blocs/provider.dart';

import 'package:proyecto/src/pages/login_dueno_vehiculo.dart';
import 'package:proyecto/src/preferencias_usuario/preferencias_usuario.dart';
import 'package:proyecto/src/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{

WidgetsFlutterBinding.ensureInitialized(); 

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciasUsuario();
    print(prefs.token);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor:
            (Platform.isAndroid) ? Colors.transparent : Colors.white));

    return Provider(
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        initialRoute: 'login',
        routes: getApplicationRoutes(),

        onGenerateRoute: (RouteSettings settings) {
          print('Ruta llamada: ${settings.name}');

          return MaterialPageRoute(
              builder: (BuildContext context) => LoginDuenoVehiculo());
        },
      ),
    );
  }
}
