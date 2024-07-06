import 'package:flutter/material.dart';

class Funcionario with ChangeNotifier {
  final String id;
  final String nomeFuncionario;
  final String deptFuncionario;
  final String cargoFuncionario;
  final String dataAdmissao;
  final String categoriaFuncionario;
  final String generoFuncionario;
  final double salario;
  final String imageUrl;
  bool isFerias;

  Funcionario({
    required this.id,
    required this.nomeFuncionario,
    required this.deptFuncionario,
    required this.cargoFuncionario,
    required this.dataAdmissao,
    required this.categoriaFuncionario,
    required this.generoFuncionario,
    required this.salario,
    required this.imageUrl,
    this.isFerias = false,
  });

  void toggleFerias() {
    isFerias = !isFerias;
    notifyListeners();
  }
}
