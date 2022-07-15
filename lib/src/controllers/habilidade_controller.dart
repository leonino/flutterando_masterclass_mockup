import '../models/habilidade_model.dart';

class HabilidadeController {
  Future<List<HabilidadeModel>> fetchAll() async {
    await Future.delayed(Duration(seconds: 1));
    return HABILIDADES.map((map) => HabilidadeModel.fromMap(map)).toList();
  }
}

const HABILIDADES = [
  {
    'nome': 'Java/JSP',
    'habilidade': 75,
    'icon': 'assets/icons/tecnologias/java.png',
  },
  {
    'nome': 'MySQL',
    'habilidade': 88,
    'icon': 'assets/icons/tecnologias/mysql.png',
  },
  {
    'nome': 'Postgree SQL',
    'habilidade': 60,
    'icon': 'assets/icons/tecnologias/postgresql.png',
  },
  {
    'nome': 'JS/TS',
    'habilidade': 50,
    'icon': 'assets/icons/tecnologias/javascript.png',
  },
  {
    'nome': 'Angular',
    'habilidade': 45,
    'icon': 'assets/icons/tecnologias/angular.png',
  },
  {
    'nome': 'Dart/Fluter',
    'habilidade': 55,
    'icon': 'assets/icons/tecnologias/flutter.png',
  },
];
