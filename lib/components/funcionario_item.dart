import 'package:caririrh/models/funcionario.dart';
import 'package:caririrh/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FuncionarioItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final funcionario = Provider.of<Funcionario>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GridTile(
        child: GestureDetector(
          child: Image.asset(funcionario.imageUrl, fit: BoxFit.cover),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.FUNCIONARIO_DETAIL,
              arguments: funcionario,
            );
          },
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Funcionario>(
            builder: (ctx, funcionario, _) => IconButton(
                onPressed: () {
                  funcionario.toggleFerias();
                },
                icon: Icon(
                  funcionario.isFerias
                      ? Icons.work_off_outlined
                      : Icons.work_outline,
                  color: funcionario.isFerias ? Colors.red : Colors.green,
                )),
          ),
          title: Text(
            funcionario.nomeFuncionario,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.paid_sharp)),
        ),
      ),
    );
  }
}
