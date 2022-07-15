import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_mastersclass_mockups/src/controllers/habilidade_controller.dart';

void main() {
  late final HabilidadeController controller;

  setUp(() {
    controller = HabilidadeController();
  });
  test("Should fetch all habilidades", () async {
    var habilidades = await controller.fetchAll();
    expect(habilidades.length > 0, true);
  });
}
