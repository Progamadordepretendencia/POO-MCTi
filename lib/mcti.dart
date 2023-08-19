import 'dart:convert';

class Dependente {
  late String _nome;

  Dependente(String nome) {
    _nome = nome;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
    };
  }
}

class Funcionario {
  late String _nome;
  late List<Dependente> _dependentes;

  Funcionario(String nome, List<Dependente> dependentes) {
    _nome = nome;
    _dependentes = dependentes;
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': _nome,
      'dependentes': _dependentes.map((dep) => dep.toJson()).toList(),
    };
  }
}

class EquipeProjeto {
  late String _nomeProjeto;
  late List<Funcionario> _funcionarios;

  EquipeProjeto(String nomeprojeto, List<Funcionario> funcionarios) {
    _nomeProjeto = nomeprojeto;
    _funcionarios = funcionarios;
  }

  Map<String, dynamic> toJson() {
    return {
      'nomeProjeto': _nomeProjeto,
      'funcionarios': _funcionarios.map((func) => func.toJson()).toList(),
    };
  }
}

void main() {
  // 1. Criar vários objetos Dependentes
  var dependente1 = Dependente('Dependente1');
  var dependente2 = Dependente('Dependente2');

  // 2. Criar vários objetos Funcionario
  var funcionario1 = Funcionario('Funcionario1', [dependente1]);
  var funcionario2 = Funcionario('Funcionario2', [dependente2]);

  // 3. Associar os Dependentes criados aos respectivos funcionarios

  // 4. Criar uma lista de Funcionarios
  var listaFuncionarios = [funcionario1, funcionario2];

  // 5. Criar um objeto EquipeProjeto chamando o método construtor
  var equipeProjeto = EquipeProjeto('ProjetoX', listaFuncionarios);

  // 6. Printar no formato JSON o objeto EquipeProjeto
  var equipeProjetoJson = json.encode(equipeProjeto.toJson());
  print(equipeProjetoJson);

  // 7. Implementar as funcionalidades definidas na função main no arquivo.
}
