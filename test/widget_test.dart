
import 'package:flutter_test/flutter_test.dart';
import 'package:biblioteca_movil_app/main.dart';

void main() {
  testWidgets('La aplicación de biblioteca inicia correctamente',
      (WidgetTester tester) async {

    // Cargar la aplicación
    await tester.pumpWidget(const BibliotecaApp());

    // Verificar el título principal
    expect(
      find.textContaining('Biblioteca ADSO - Catálogo'),
      findsOneWidget,
    );

    // Verificar que aparezcan los libros
    expect(find.text('Cien Años de Soledad'), findsOneWidget);
    expect(find.text('El Algoritmo Definitivo'), findsOneWidget);
    expect(find.text('Clean Code en Python'), findsOneWidget);

    // Verificar la navegación inferior
    expect(find.text('Catálogo'), findsOneWidget);
    expect(find.text('Préstamos'), findsOneWidget);
    expect(find.text('Perfil'), findsOneWidget);
  });
}
