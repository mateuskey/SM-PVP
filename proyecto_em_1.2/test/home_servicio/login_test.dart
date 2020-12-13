import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:proyecto/src/providers/usuario_provider.dart';

class MockLoginServicioAutomotriz extends Mock implements UsuarioProvider {}

void main() {

  MockLoginServicioAutomotriz mockLoginServicioAutomotriz;

  setUp((){
    mockLoginServicioAutomotriz = MockLoginServicioAutomotriz();
  });
  
  
}
