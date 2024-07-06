import 'package:caririrh/data/dummy_data.dart';
import 'package:caririrh/models/funcionario.dart';
import 'package:flutter/material.dart';

class FuncionarioList with ChangeNotifier {
  List<Funcionario> _items = dummyFuncionarios;
  bool _showFeriasSomente = false;

  List<Funcionario> get items {
    if (_showFeriasSomente) {
      return _items.where((funcionario) => funcionario.isFerias).toList();
    }
    return [..._items];
  }

  void showFeriasSomente() {
    _showFeriasSomente = true;
    notifyListeners();
  }

  void showAll() {
    _showFeriasSomente = false;
    notifyListeners();
  }

  void addFuncionario(Funcionario funcionario) {
    _items.add(funcionario);
    notifyListeners();
  }
}
