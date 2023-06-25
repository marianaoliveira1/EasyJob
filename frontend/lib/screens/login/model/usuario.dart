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

class EntityProfessorAnuncio {
  final int tipo_usuario;
  final String nome;
  final String? email;
  final String telefone;
  final String descricao;
  final double preco;
  final String materia;
  final String dia_semana;
  final String horario_comeco;
  final String horario_fim;
  EntityProfessorAnuncio({
    required this.tipo_usuario,
    required this.nome,
    this.email,
    required this.telefone,
    required this.descricao,
    required this.preco,
    required this.materia,
    required this.dia_semana,
    required this.horario_comeco,
    required this.horario_fim,
  });

  EntityProfessorAnuncio copyWith({
    int? tipo_usuario,
    String? nome,
    String? email,
    String? telefone,
    String? descricao,
    double? preco,
    String? materia,
    String? dia_semana,
    String? horario_comeco,
    String? horario_fim,
  }) {
    return EntityProfessorAnuncio(
      tipo_usuario: tipo_usuario ?? this.tipo_usuario,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      telefone: telefone ?? this.telefone,
      descricao: descricao ?? this.descricao,
      preco: preco ?? this.preco,
      materia: materia ?? this.materia,
      dia_semana: dia_semana ?? this.dia_semana,
      horario_comeco: horario_comeco ?? this.horario_comeco,
      horario_fim: horario_fim ?? this.horario_fim,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "tipo_usuario": tipo_usuario,
      "nome": nome,
      "email": email,
      "telefone": telefone,
      "descricao": descricao,
      "preco": preco,
      "materia": materia,
      "dia_semana": dia_semana,
      "horario_comeco": horario_comeco,
      "horario_fim": horario_fim,
    };
  }

  factory EntityProfessorAnuncio.fromMap(Map<String, dynamic> map) {
    return EntityProfessorAnuncio(
      tipo_usuario: map["tipo_usuario"]?.toInt(),
      nome: map["nome"],
      email: map["email"],
      telefone: map["telefone"],
      descricao: map["descricao"],
      preco: map["preco"]?.toDouble(),
      materia: map["materia"],
      dia_semana: map["dia_semana"],
      horario_comeco: map["horario_comeco"],
      horario_fim: map["horario_fim"],
    );
  }

  String toJson() => json.encode(toMap());

  factory EntityProfessorAnuncio.fromJson(String source) => EntityProfessorAnuncio.fromMap(json.decode(source));

  @override
  String toString() {
    return "EntityProfessorAnuncio(tipo_usuario: $tipo_usuario, nome: $nome, email: $email, telefone: $telefone, descricao: $descricao, preco: $preco, materia: $materia, dia_semana: $dia_semana, horario_comeco: $horario_comeco, horario_fim: $horario_fim)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EntityProfessorAnuncio && other.tipo_usuario == tipo_usuario && other.nome == nome && other.email == email && other.telefone == telefone && other.descricao == descricao && other.preco == preco && other.materia == materia && other.dia_semana == dia_semana && other.horario_comeco == horario_comeco && other.horario_fim == horario_fim;
  }

  @override
  int get hashCode {
    return tipo_usuario.hashCode ^ nome.hashCode ^ email.hashCode ^ telefone.hashCode ^ descricao.hashCode ^ preco.hashCode ^ materia.hashCode ^ dia_semana.hashCode ^ horario_comeco.hashCode ^ horario_fim.hashCode;
  }
}
