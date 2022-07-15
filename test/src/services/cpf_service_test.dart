import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando_mastersclass_mockups/src/models/cpf_model.dart';
import 'package:flutterando_mastersclass_mockups/src/services/cpf_service.dart';

void main() {
  late final CpfService service;
  late final cpf;
  setUpAll(() {
    service = CpfService();
    cpf = CpfModel(
      numero: "37108140225",
      valido: true,
    );
  });

  test("Should CREATE the one CPF", () async {
    var result = await service.saveCpf(cpf: cpf);
    expect(result.numero, '37108140225');
  });
}
