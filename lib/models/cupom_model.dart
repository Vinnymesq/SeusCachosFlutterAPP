import 'dart:convert';
import 'dart:typed_data';

class CupomModel {
  late final int id;
  late final String nome;
  late final Uint8List? imagem;
  late final String statusCupom;
  late final String desconto;
  late final String codigo;

  CupomModel({id, nome, imagem, statusCupom, desconto, codigo});

  int get getId {
    return id;
  }

  String get getNome {
    return nome;
  }

  Uint8List get getImagem {
    return imagem!;
  }

  String get getStatusCupom {
    return statusCupom;
  }

  String get getCodigo {
    return codigo;
  }

  String get getDesconto {
    return desconto;
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": nome,
        "cod_cupom": codigo,
        "imagem": imagem,
        "statusCupom": statusCupom,
        "discount": desconto
      };

  String toJson() => jsonEncode(toMap());

  factory CupomModel.fromMap(Map<String, dynamic> map) {
    return CupomModel(
        id: map['id'],
        nome: map['name'],
        imagem: map['imagem'],
        codigo: map['cod_cupom'],
        statusCupom: map['statusCupom'],
        desconto: map['discount']);
  }

  factory CupomModel.fromJson(String json) =>
      CupomModel.fromMap(jsonDecode(json));

  void setId(elementAt) {
    this.id = elementAt;
  }

  void setNome({required nome}) {
    this.nome = nome;
  }

  void setImagem(Uint8List data) {
    this.imagem = data;
  }

  void setStatusCupom({required statusCupom}) {
    this.statusCupom = statusCupom;
  }

  void setCodigo({required codigo}) {
    this.codigo = codigo;
  }

  void setDesconto({required desconto}) {
    this.desconto = desconto;
  }
}
