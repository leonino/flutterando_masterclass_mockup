import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProficionalModel {
  final String nome;
  final String imageUrl;
  final String description;
  final List<RedesSocial> redesSociais;
  ProficionalModel({
    required this.nome,
    required this.imageUrl,
    required this.description,
    required this.redesSociais,
  });
}

class RedesSocial {
  final TipoRedeSocial tipo;
  final String url;

  RedesSocial({required this.tipo, required this.url});
}

class TipoRedeSocial {
  final String title;
  final IconData icon;

  TipoRedeSocial(this.title, this.icon);

  static final telegram = TipoRedeSocial('Telegram', FontAwesome.telegram);
  static final instagram = TipoRedeSocial('Instagram', FontAwesome.instagram);
  static final github = TipoRedeSocial('Github', FontAwesome.github);
  static final whatsapp = TipoRedeSocial('Whatsapp', FontAwesome.whatsapp);
  static final facebook = TipoRedeSocial('Facebook', FontAwesome.facebook);
}
