import 'dart:convert';

class CpfModel {
  final String? id;
  final String numero;
  final bool valido;

  CpfModel({this.id, required this.numero, required this.valido});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'numero': numero,
      'valido': valido,
    };
  }

  factory CpfModel.fromMap(Map<String, dynamic> map) {
    return CpfModel(
      id: map['id'] ?? '',
      numero: map['numero'] ?? '',
      valido: map['valido'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CpfModel.fromJson(String source) =>
      CpfModel.fromMap(json.decode(source));
}
