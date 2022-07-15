import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/controllers/habilidade_controller.dart';
import 'package:flutterando_mastersclass_mockups/src/models/profissional_model.dart';

import 'widgets/info_profissional_widget.dart';
import 'widgets/lista_lateral_widget.dart';
import 'widgets/lista_vertical_indicator_widget.dart';

class SobreDevPage extends StatefulWidget {
  const SobreDevPage({Key? key}) : super(key: key);

  @override
  State<SobreDevPage> createState() => _SobreDevPageState();
}

class _SobreDevPageState extends State<SobreDevPage> {
  final habilidadeController = HabilidadeController();
  final info = ProfissionalModel(
    nome: 'Marcos da Silva Ribeiro',
    description:
        'Desenvolvedor FullStack Java/JPA/JSF Pleno - MySQL/PostgreeSQL - Dart/Flutter Pleno - Experiencia de 30 anos com Analise e desenvolvimento de diversos aplicativos',
    imageUrl: 'assets/images/marcos.png',
    redesSociais: [
      RedesSocial(
        tipo: TipoRedeSocial.telegram,
        url: 'https://t.me/Leonino33',
      ),
      RedesSocial(
        tipo: TipoRedeSocial.whatsapp,
        url: 'https://wa.me/message/GV4AGV2CEXQZA1',
      ),
      RedesSocial(
        tipo: TipoRedeSocial.github,
        url: 'https://github.com/leonino',
      ),
      RedesSocial(
        tipo: TipoRedeSocial.instagram,
        url: 'https://www.instagram.com/marcos.ribeiro204/',
      ),
      RedesSocial(
        tipo: TipoRedeSocial.facebook,
        url: 'https://www.facebook.com/leoninopa/',
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoProfissionalWidget(
                profissionalInfo: info,
              ),
              SizedBox(height: 20),
              ListaLateralWidget(
                habilidadeController: habilidadeController,
              ),
              SizedBox(height: 20),
              ListaVerticalIndicatorWidget(
                habilidadeController: habilidadeController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
