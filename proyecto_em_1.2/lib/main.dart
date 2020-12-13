import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto/src/blocs/provider.dart';

import 'package:proyecto/src/pages/Due%C3%B1o_veh%C3%ADculo/login_dueno_vehiculo.dart';
import 'package:proyecto/src/preferencias_usuario/preferencias_usuario.dart';
import 'package:proyecto/src/providers/push_notifications_provider.dart';
import 'package:proyecto/src/routes/routes.dart';

void main() async{

WidgetsFlutterBinding.ensureInitialized(); 

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  
  @override
  void initState() { 
    super.initState();

    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications(); 

    // pushProvider.mensajesStream.listen((data) { 

    //   print('Argumento desde main: $argumento');
    //   // Navigator.pushNamed(context, 'cargada');
    //   // navigatorKey.currentState.pushNamed('cargada', arguments: data);

    // });
    
  }
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
        navigatorKey: navigatorKey,
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
