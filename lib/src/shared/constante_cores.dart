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

const ATIVIDADES = [
  {
    'icon': FontAwesome5Solid.running, //'assets/icons/mockup_animacoes.png',
    'title': 'Animações',
    'description':
        'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
    'data': EXERCICIOS,
    'codigo_fonte_url': 'https://github.com/leonino/masterclass_animacoes',
  },
  {
    'icon': FontAwesome5Solid.glasses, //'assets/icons/mockup_mockup.png',
    'title': 'Leitura de Mockup',
    'description':
        'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
    'data': MOCKUPS,
    'codigo_fonte_url': 'https://github.com/leonino?tab=repositories',
  },
  {
    'icon': MaterialIcons.toys, //'assets/icons/mockup_toys.png',
    'title': 'Playground',
    'description': 'Ambiente destinado a testes e estudos em geral',
    'data': PLAYGROUNDS,
    'codigo_fonte_url': 'https://github.com/leonino?tab=repositories',
  },
];

const EXERCICIOS = [
  {
    'id': 1,
    'title': 'Animações Explicitas 01',
    'url': '/impricita01',
  },
  {
    'id': 2,
    'title': 'Animações Explicitas 02',
    'url': '/impricita02',
  },
  {
    'id': 3,
    'title': 'Animações implicitas 01',
    'url': '/explicita01',
  },
  {
    'id': 4,
    'title': 'Animações Explicitas 02',
    'url': '/explicita02',
  },
];

const MOCKUPS = [
  {
    'id': 1,
    'title': 'Under Control',
    'url': '/under',
  },
  {
    'id': 2,
    'title': 'Tinder',
    'url': '/tinder',
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
