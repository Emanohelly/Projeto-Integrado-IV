import 'dart:math';

import 'package:caririrh/models/folha_pagamento_item.dart';
import 'package:caririrh/models/funcionario.dart';
import 'package:flutter/material.dart';

class FolhaPagamento with ChangeNotifier {
  Map<String, FolhaPagamentoItem> _items = {};

  Map<String, FolhaPagamentoItem> get items {
    return {...items};
  }

  int get itemsCount {
    return _items.length;
  }

  double get totalAmount {
    double total = 0.0;

    _items.forEach((key, folhaPagamentoItem) {
      total += folhaPagamentoItem.salario;
    });
    return total;
  }

  void addItem(Funcionario funcionario) {
    if (_items.containsKey(funcionario.id)) {
      _items.update(
        funcionario.id,
        (existingItem) => FolhaPagamentoItem(
          id: existingItem.id,
          funcionarioId: existingItem.funcionarioId,
          nomeFuncionario: existingItem.nomeFuncionario,
          mesPagamento: existingItem.mesPagamento,
          salario: existingItem.salario,
        ),
      );
    } else {
      _items.putIfAbsent(
        funcionario.id,
        () => FolhaPagamentoItem(
            id: Random().nextDouble().toString(),
            funcionarioId: funcionario.id,
            nomeFuncionario: funcionario.nomeFuncionario,
            mesPagamento: DateTime.now(),
            salario: funcionario.salario),
      );
    }
    notifyListeners();
  }

  void removeItem(String funcionarioId) {
    _items.remove(funcionarioId);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
