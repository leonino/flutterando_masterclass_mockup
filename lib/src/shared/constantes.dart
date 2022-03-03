import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

/// Cores Tinder
const int cor_tinder_fundo_inicial = 0xffea4a77;
const int cor_tinder_fundo_fim = 0xffea5e6c;
const int cor_tinder_texto = 0xffffffff;

const int corPrimaria = 0xff055AA3;
const int corHeadLine2 = 0xFFEDF4F8;
const int corScafoldBackground = 0xFF121517;

const Color corBlack90 = Color(0xFF121517);
const Color corBlack50 = Color(0xFF172026);
const Color corCinza = Color(0xFF51565A);
const Color corWhite90 = Color(0xFFD6DFE4);
const Color corWhite = Color(0xFFEDF4F8);
const Color corBlue = Color(0xFF055AA3);

class ColorsDark {
  static const Color colorDescriptionDark = Color(0xff51565a);
  static const Color colorCardDark = Color(0xff172026);
  static const Color colorBackgroundDark = Color(0xff121517);
  static const Color colorHighLight = Color(0xff172026);
  static const Color colorBackgroundLigth = Color(0xffd6dfe4);

  static const Color corPrimary = Color(0xff055aa3);
  static const Color corTextHighLight = Color(0xFFEDF4F8);
  static const Color corScafoldBackground = Color(0xFFD6DFE4);
  static const Color corCardBackground = Color(0xFF172026);
}

class ColorsLight {
  static const Color corHighLight = Color(0xFF172026);

  static const Color colorDescriptionDark = Color(0xff51565a);
  static const Color colorCardDark = Color(0xff172026);
  static const Color colorBackgroundDark = Color(0xff121517);
  static const Color colorHighLight = Color(0xff172026);
  static const Color colorBackgroundLigth = Color(0xffd6dfe4);

  static const Color corPrimary = Color(0xff055aa3);
  static const Color corTextHighLight = Color(0xFF172026);
  static const Color corScafoldBackground = Color(0xFFD6DFE4);
  static const Color corCardBackground = Color(0xFFEDF4F8);
}

const PAGINAS = ["Atividades", "Repositórios", "Sobre o dev"];

const ATIVIDADES = [
  {
    'id': 4,
    'icon': FontAwesome5Solid.running, //'assets/icons/mockup_animacoes.png',
    'title': 'Animações',
    'description':
        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
    'url': '/animacoes',
  },
  {
    'id': 2,
    'icon': FontAwesome5Solid.glasses, //'assets/icons/mockup_mockup.png',
    'title': 'Leitura de Mockup',
    'description':
        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    'url': '/mockup',
  },
  {
    'id': 3,
    'icon': MaterialIcons.toys, //'assets/icons/mockup_toys.png',
    'title': 'Playground',
    'description': 'Ambiente destinado a testes e estudos em geral',
    'url': '/playground',
  },
];

const EXERCICIOS = [
  {
    'id': 1,
    'title': 'Exercicio 01',
    'url': '',
  },
  {
    'id': 2,
    'title': 'Exercicio 02',
    'url': '',
  },
  {
    'id': 3,
    'title': 'Exercicio 03',
    'url': '',
  },
  {
    'id': 4,
    'title': 'Exercicio 04',
    'url': '',
  },
];

const PLAYGROUNDS = [
  {
    'id': 1,
    'title': 'Exercicio 01',
    'url': '',
  },
  {
    'id': 2,
    'title': 'Exercicio 02',
    'url': '',
  },
  {
    'id': 3,
    'title': 'Exercicio 03',
    'url': '',
  },
  {
    'id': 4,
    'title': 'Exercicio 04',
    'url': '',
  },
];
