import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterando_mastersclass_mockups/src/models/cpf_model.dart';

class CpfService {
  static final pathURL = "http://127.0.0.1:5533/cpfs";
  final dio = Dio();

  Future<List<CpfModel>> getAll() async {
    final lista = await dio.get(pathURL) as List;
    final listaCpf = lista.map((json) => CpfModel.fromJson(json)).toList();
    return listaCpf;
  }

  Future<CpfModel> getCpfById(String id) async {
    final json = await dio.get("$pathURL/$id") as Map;
    var cpfModel = CpfModel.fromMap(json[0]);
    return cpfModel;
  }

  Future<CpfModel> saveCpf({String? id, required CpfModel cpf}) async {
    final Response<dynamic> response;
    var data = cpf.toMap();
    if (id == null) {
      response = await dio.post(pathURL, data: data);
    } else {
      response = await dio.put("$pathURL/$id");
    }
    var json = response.data as Map;
    return CpfModel.fromMap(json[0]);
  }

  Future<CpfModel> deleteCpfById(String id) async {
    final json = await dio.get("$pathURL/$id") as Map;
    var cpfModel = CpfModel.fromMap(json[0]);
    return cpfModel;
  }
}
