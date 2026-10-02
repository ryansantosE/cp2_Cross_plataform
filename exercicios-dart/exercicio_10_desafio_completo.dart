// Exercício 10 - Desafio completo (todos os tipos + classe)

// enum: status fechado da consulta
enum StatusConsulta { agendada, confirmada, cancelada }

// class: tipo personalizado do domínio
class Consulta {
  final int id; // int
  final String paciente; // String
  final String medico;
  final String especialidade;
  final double valor; // double
  final DateTime data; // DateTime
  final String? observacoes; // String? (null safety)
  StatusConsulta status; // enum

  Consulta({
    required this.id,
    required this.paciente,
    required this.medico,
    required this.especialidade,
    required this.valor,
    required this.data,
    required this.status,
    this.observacoes,
  });

  // bool: só consulta agendada pode mudar de status
  bool get podeAlterar => status == StatusConsulta.agendada;

  void confirmar() {
    if (podeAlterar) status = StatusConsulta.confirmada;
  }

  void cancelar() {
    if (podeAlterar) status = StatusConsulta.cancelada;
  }

  String get dataFormatada {
    final dia = data.day.toString().padLeft(2, '0');
    final mes = data.month.toString().padLeft(2, '0');
    return '$dia/$mes/${data.year}';
  }
}

void main() {
  // List: pelo menos 2 consultas
  List<Consulta> consultas = [
    Consulta(
      id: 1,
      paciente: 'Carlos Andrade',
      medico: 'Dr. Roberto Silva',
      especialidade: 'Cardiologia',
      valor: 350.0,
      data: DateTime(2026, 8, 21, 14, 30),
      status: StatusConsulta.agendada,
      observacoes: 'Consulta de rotina',
    ),
    Consulta(
      id: 2,
      paciente: 'Ana Souza',
      medico: 'Dra. Marina Costa',
      especialidade: 'Dermatologia',
      valor: 280.0,
      data: DateTime(2026, 8, 22, 9, 0),
      status: StatusConsulta.agendada,
    ),
    Consulta(
      id: 3,
      paciente: 'João Pereira',
      medico: 'Dr. Roberto Silva',
      especialidade: 'Cardiologia',
      valor: 350.0,
      data: DateTime(2026, 8, 18, 16, 0),
      status: StatusConsulta.agendada,
    ),
  ];

  // Set: especialidades únicas (Cardiologia aparece 2x, mas fica 1x)
  Set<String> especialidades = consultas.map((c) => c.especialidade).toSet();

  // Map: dados resumidos de um paciente
  Map<String, dynamic> paciente = {
    'nome': 'Carlos Andrade',
    'cpf': '123.456.789-00',
    'email': 'carlos@email.com',
    'telefone': null,
  };

  // Record: resumo rápido (paciente, valor)
  (String, double) resumoRapido = (consultas.first.paciente, consultas.first.valor);

  // num: soma dos valores (fold começa com 0 e acumula)
  num soma = consultas.fold<num>(0, (total, c) => total + c.valor);

  void imprimirStatus() {
    for (final c in consultas) {
      final obs = c.observacoes ?? 'sem observações';
      print('  #${c.id} ${c.paciente} | ${c.dataFormatada} | ${c.status.name} | $obs');
    }
  }

  print('========== RELATÓRIO DE CONSULTAS ==========');
  print('Quantidade de consultas: ${consultas.length}');
  print('Soma dos valores: R\$ ${soma.toStringAsFixed(2)}');
  print('Status de cada consulta:');
  imprimirStatus();
  print('Especialidades únicas: $especialidades');
  print('Telefone de ${paciente['nome']}: ${paciente['telefone'] ?? 'não informado'}');
  print('Resumo rápido: ${resumoRapido.$1} - R\$ ${resumoRapido.$2.toStringAsFixed(2)}');

  // Confirma uma consulta e cancela outra
  consultas[0].confirmar();
  consultas[1].cancelar();

  print('');
  print('Após confirmar a #1 e cancelar a #2:');
  imprimirStatus();
}
