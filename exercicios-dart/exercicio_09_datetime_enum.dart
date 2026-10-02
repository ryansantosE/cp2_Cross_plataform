// Exercício 09 - DateTime + enum + Record

// 1. Enum de status
enum StatusConsulta { agendada, confirmada, cancelada }

void main() {
  // 2. Data da consulta
  DateTime dataConsulta = DateTime(2026, 8, 21, 14, 30);

  // 3. Record nomeado com os dados principais
  ({String paciente, String medico, double valor}) resumo = (
    paciente: 'Carlos Andrade',
    medico: 'Dr. Roberto Silva',
    valor: 350.0,
  );

  StatusConsulta status = StatusConsulta.agendada;

  // 4. Impressões
  print('Data: ${dataConsulta.day}/${dataConsulta.month}/${dataConsulta.year}');
  print('Status: ${status.name}');
  print('Paciente: ${resumo.paciente}');
  print('Médico: ${resumo.medico}');
  print('Valor: R\$ ${resumo.valor.toStringAsFixed(2)}');

  // 5. Muda o status
  status = StatusConsulta.confirmada;
  print('Novo status: ${status.name}');

  // 6. Retorno 7 dias depois
  DateTime retorno = dataConsulta.add(const Duration(days: 7));
  print('Retorno: ${retorno.day}/${retorno.month}/${retorno.year}');
}
