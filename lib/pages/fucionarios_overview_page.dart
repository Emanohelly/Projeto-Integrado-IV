import 'package:caririrh/components/badgee.dart';
import 'package:caririrh/components/funcionario_grid.dart';
import 'package:caririrh/models/folhaPagamento.dart';
import 'package:caririrh/models/funcionario_list.dart';
import 'package:caririrh/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterOptions {
  Ferias,
  All,
}

class FucionariosOverviewPage extends StatelessWidget {
  FucionariosOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FuncionarioList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cariri RH | Funcionários',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Férias'),
                value: FilterOptions.Ferias,
              ),
              PopupMenuItem(
                child: Text('Todos'),
                value: FilterOptions.All,
              )
            ],
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Ferias) {
                provider.showFeriasSomente();
              } else {
                provider.showAll();
              }
              ;
            },
          ),
          Consumer<FolhaPagamento>(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.FOLHA_PAGAMENTO);
                },
                icon: Icon(Icons.paid_sharp),
                color: Colors.white),
            builder: (ctx, folhaPagamento, child) => Badgee(
              value: folhaPagamento.itemsCount.toString(),
              child: child!,
            ),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: FuncionarioGrid(),
    );
  }
}
