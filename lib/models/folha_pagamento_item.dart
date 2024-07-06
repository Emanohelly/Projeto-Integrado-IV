import 'package:intl/intl.dart';

class FolhaPagamentoItem {
  final String id;
  final String funcionarioId;
  final String nomeFuncionario;
  final DateTime mesPagamento;
  final double salario;

  FolhaPagamentoItem({
    required this.id,
    required this.funcionarioId,
    required this.nomeFuncionario,
    required this.mesPagamento,
    required this.salario,
  });

  // Método para formatar a data
  String get mesPagamentoFormatado {
    return DateFormat('MMMM yyyy', 'pt_BR').format(mesPagamento);
    // 'pt_BR' para português do Brasil
  }
}
