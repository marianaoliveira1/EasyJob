import 'dart:convert';

class EntityUsuario {
  final int tipo;
  final String? nome;
  final String? email;
  EntityUsuario({
    required this.tipo,
    this.nome,
    this.email,
  });

  EntityUsuario copyWith({
    int? tipo,
    String? nome,
    String? email,
  }) {
    return EntityUsuario(
      tipo: tipo ?? this.tipo,
      nome: nome ?? this.nome,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "tipo": tipo,
      "nome": nome,
      "email": email,
    };
  }

  factory EntityUsuario.fromMap(Map<String, dynamic> map) {
    return EntityUsuario(
      tipo: map["tipo"]?.toInt(),
      nome: map["nome"],
      email: map["email"],
    );
  }

  String toJson() => json.encode(toMap());

  factory EntityUsuario.fromJson(String source) => EntityUsuario.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntityUsuario && other.tipo == tipo && other.nome == nome && other.email == email;
  }

  @override
  int get hashCode => tipo.hashCode ^ nome.hashCode ^ email.hashCode;
}

class EntityUsuarioEndereco {
  final String bairro;
  final String cep;
  final String cidade;
  final String complemento;
  final String estado;
  final String numero;
  EntityUsuarioEndereco({
    required this.bairro,
    required this.cep,
    required this.cidade,
    required this.complemento,
    required this.estado,
    required this.numero,
  });

  EntityUsuarioEndereco copyWith({
    String? bairro,
    String? cep,
    String? cidade,
    String? complemento,
    String? estado,
    String? numero,
  }) {
    return EntityUsuarioEndereco(
      bairro: bairro ?? this.bairro,
      cep: cep ?? this.cep,
      cidade: cidade ?? this.cidade,
      complemento: complemento ?? this.complemento,
      estado: estado ?? this.estado,
      numero: numero ?? this.numero,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "bairro": bairro,
      "cep": cep,
      "cidade": cidade,
      "complemento": complemento,
      "estado": estado,
      "numero": numero,
    };
  }

  factory EntityUsuarioEndereco.fromMap(Map<String, dynamic> map) {
    return EntityUsuarioEndereco(
      bairro: map["bairro"],
      cep: map["cep"],
      cidade: map["cidade"],
      complemento: map["complemento"],
      estado: map["estado"],
      numero: map["numero"],
    );
  }

  String toJson() => json.encode(toMap());

  factory EntityUsuarioEndereco.fromJson(String source) => EntityUsuarioEndereco.fromMap(json.decode(source));

  @override
  String toString() {
    return "EntityUsuarioEndereco(bairro: $bairro, cep: $cep, cidade: $cidade, complemento: $complemento, estado: $estado, numero: $numero)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntityUsuarioEndereco && other.bairro == bairro && other.cep == cep && other.cidade == cidade && other.complemento == complemento && other.estado == estado && other.numero == numero;
  }

  @override
  int get hashCode {
    return bairro.hashCode ^ cep.hashCode ^ cidade.hashCode ^ complemento.hashCode ^ estado.hashCode ^ numero.hashCode;
  }
}

class EntityMateriasDtorequest {
  final String? descricao;
  final int? id;
  EntityMateriasDtorequest({
    this.descricao,
    this.id,
  });

  EntityMateriasDtorequest copyWith({
    String? descricao,
    int? id,
  }) {
    return EntityMateriasDtorequest(
      descricao: descricao ?? this.descricao,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "descricao": descricao,
      "id": id,
    };
  }

  factory EntityMateriasDtorequest.fromMap(Map<String, dynamic> map) {
    return EntityMateriasDtorequest(
      descricao: map["descricao"],
      id: map["id"]?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => "EntityMateriasDtorequest(descricao: $descricao, id: $id)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntityMateriasDtorequest && other.descricao == descricao && other.id == id;
  }

  @override
  int get hashCode => descricao.hashCode ^ id.hashCode;
}
