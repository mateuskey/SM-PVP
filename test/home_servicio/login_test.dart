import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:proyecto/src/pages/Servicio_automotriz/login%20servicio_page.dart';
import 'package:proyecto/src/providers/usuario_provider.dart';

// class Mock
class MockEmail extends Mock {}

class MockPassword extends Mock {}

void main() {
  test('initial state is logged out', () {
    MockEmail mail = MockEmail();
    MockEmail password = MockEmail();

    //Given
    when(mail).thenAnswer((realInvocation) => null);
    when(password).thenAnswer((realInvocation) => null);

    //When
    UsuarioProvider state = UsuarioProvider();

    //Then
    expect(state.login(mail.toString(), password.toString()), false);
  });
}
