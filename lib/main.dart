import 'package:caririrh/models/folhaPagamento.dart';
import 'package:caririrh/models/funcionario_list.dart';
import 'package:caririrh/pages/funcionarios_detail_page.dart';
import 'package:provider/provider.dart';
import 'package:caririrh/pages/auth_page.dart';
import 'package:caririrh/pages/fucionarios_overview_page.dart';
import 'package:caririrh/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FuncionarioList(),
        ),
        ChangeNotifierProvider(
          create: (_) => FolhaPagamento(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            fontFamily: 'Poppins',
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(secondary: Colors.deepOrange)),
        home: FucionariosOverviewPage(),
        routes: {
          // AppRoutes.AUTH: (ctx) => AuthPage(),
          // AppRoutes.HOME: (ctx) => FucionariosOverviewPage(),
          AppRoutes.FUNCIONARIO_DETAIL: (ctx) => FuncionariosDetailPage(),
        },
      ),
    );
  }
}
