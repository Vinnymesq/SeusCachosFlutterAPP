import 'dart:convert';

class UsuarioModel {

  dynamic id;
  dynamic nome; 
  dynamic email;
  dynamic senha;



  UsuarioModel({var id , var nome , var email , var senha , var nivelAcess});


  Map <String, dynamic> toMap(){

    return{
        'id': id, 
        'nome': nome, 
        'email': email, 
        'senha': senha, 
    };
  }
    String toJson() => json.encode(toMap());

    factory UsuarioModel.fromMap(Map<dynamic, dynamic> map) {
    return UsuarioModel(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
       
        );
  }

  factory UsuarioModel.fromJson(String json) => UsuarioModel.fromMap(jsonDecode(json));


UsuarioModel copyWith({
    int? id,
    String? nome, 
    String? email, 
    String? senha, 

})

{
    return UsuarioModel (
    id: id ?? this.id,
    nome: nome ?? this.nome,
    email: email ?? this.email,
    senha: senha ?? this.senha,);

}


 @override
  String toString() {
    
    return 'UsuarioModel(id: $id, nome: $nome ,email: $email ,senha: $senha)';
  }
}