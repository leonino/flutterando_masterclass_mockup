import '../models/habilidade_model.dart';

class HabilidadeController {
  List<HabilidadeModel> fetchAll() {
    return HABILIDADES.map((map) => HabilidadeModel.fromMap(map)).toList();
  }
}

const HABILIDADES = [
  {
    'nome': 'Java/JSP',
    'habilidade': 72,
    'icon': 'assets/icons/tecnologias/java.png',
  },
  {
    'nome': 'MySQL',
    'habilidade': 88,
    'icon': 'assets/icons/tecnologias/mysql.png',
  },
  {
    'nome': 'Postgree SQL',
    'habilidade': 70,
    'icon': 'assets/icons/tecnologias/postgresql.png',
  },
  {
    'nome': 'JS/TS',
    'habilidade': 65,
    'icon': 'assets/icons/tecnologias/javascript.png',
  },
  {
    'nome': 'Angular',
    'habilidade': 46,
    'icon': 'assets/icons/tecnologias/angular.png',
  },
  {
    'nome': 'Dart/Fluter',
    'habilidade': 55,
    'icon': 'assets/icons/tecnologias/flutter.png',
  },
];
