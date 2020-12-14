
import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

//firebase token cvao5tmlSj2lhlzctJ-3L9:APA91bEEgoUcbw0gu-sQDRLhXhJiUM7K_ttaZ5idq7CYO1DH5WdFaNjFAQjH4vJHQpFId3AWHjoRAwr3YoGZTjViK4LVZBe7DXAfMLpKbBiGbxdQqujGGDQWsd99FcGA0hbn04vlDrvD

class PushNotificationProvider {

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final _mensajesStreamController = StreamController<String>.broadcast();
  
  Stream<String> get mensajesStream => _mensajesStreamController.stream;

  static Future<dynamic> onBackgroundMessage(Map<String, dynamic> message) async {

    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }
}

  initNotifications() async{

    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();
    
    print('======= Firebase Token ======= ');
    print(token);

    _firebaseMessaging.configure(
      onMessage: onMessage,
      onBackgroundMessage: onBackgroundMessage,
      onLaunch: onLaunch,
      onResume: onResume,
    );
}

  Future<dynamic> onMessage(Map<String, dynamic> message) async {

    print('=======  onMessage =======');
    print('message: $message');
    final argumento = message['data'] ?? 'no-data';
    _mensajesStreamController.sink.add(argumento);
    // print('argumento: $argumento');
  }

  Future<dynamic> onLaunch(Map<String, dynamic> message) async {

    print('=======  onMessage =======');
    print('message: $message');
    final argumento = message['data']?? 'no-data';
    _mensajesStreamController.sink.add(argumento);
    
  }

  Future<dynamic> onResume(Map<String, dynamic> message) async {

    print('=======  onMessage =======');
    print('message: $message');
    final argumento = message['data']?? 'no-data';
    _mensajesStreamController.sink.add(argumento);
    
  }


  dispose(){

    _mensajesStreamController?.close();


  }

}