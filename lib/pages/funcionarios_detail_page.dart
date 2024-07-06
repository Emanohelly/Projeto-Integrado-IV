import 'package:caririrh/models/funcionario.dart';
import 'package:flutter/material.dart';

class FuncionariosDetailPage extends StatelessWidget {
  const FuncionariosDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Funcionario funcionario =
        ModalRoute.of(context)!.settings.arguments as Funcionario;
    return Scaffold(
      appBar: AppBar(
        title: Text(funcionario.nomeFuncionario),
        centerTitle: true,
      ),
    );
  }
}
