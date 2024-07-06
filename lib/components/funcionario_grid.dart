import 'package:caririrh/components/funcionario_item.dart';
import 'package:caririrh/models/funcionario.dart';
import 'package:caririrh/models/funcionario_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FuncionarioGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FuncionarioList>(context);
    final List<Funcionario> loadedFuncionarios = provider.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: loadedFuncionarios.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: loadedFuncionarios[i], child: FuncionarioItem()),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
