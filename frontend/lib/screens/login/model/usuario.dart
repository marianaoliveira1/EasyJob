// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EntityUsuario {
  String? nome;
  String? senha;
  String? email;
  int? tipo;
  EntityUsuario({
    this.nome,
    this.senha,
    this.email,
    this.tipo,
  });

  EntityUsuario copyWith({
    String? nome,
    String? senha,
    String? email,
    int? tipo,
  }) {
    return EntityUsuario(
      nome: nome ?? this.nome,
      senha: senha ?? this.senha,
      email: email ?? this.email,
      tipo: tipo ?? this.tipo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'senha': senha,
      'email': email,
      'tipo': tipo,
    };
  }

  factory EntityUsuario.fromMap(Map<String, dynamic> map) {
    return EntityUsuario(
      nome: map['nome'] != null ? map['nome'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      tipo: map['tipo'] != null ? map['tipo'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EntityUsuario.fromJson(String source) => EntityUsuario.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EntityUsuario(nome: $nome, senha: $senha, email: $email, tipo: $tipo)';
  }

  @override
  bool operator ==(covariant EntityUsuario other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.senha == senha && other.email == email && other.tipo == tipo;
  }

  @override
  int get hashCode {
    return nome.hashCode ^ senha.hashCode ^ email.hashCode ^ tipo.hashCode;
  }
}
