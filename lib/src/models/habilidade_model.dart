class HabilidadeModel {
  final String nome;
  final int percentHabilidade;
  final String imageUrl;

  HabilidadeModel({
    required this.nome,
    required this.percentHabilidade,
    required this.imageUrl,
  });

  factory HabilidadeModel.fromMap(Map<String, dynamic> map) {
    return HabilidadeModel(
      nome: map['nome'] ?? '',
      percentHabilidade: map['habilidade']?.toInt() ?? 0,
      imageUrl: map['icon'] ?? '',
    );
  }
}
