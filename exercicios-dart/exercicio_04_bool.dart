// Exercício 04 - bool
void main() {
  bool medicoAtivo = true;
  bool consultaAgendada = true;
  bool pacienteTemTelefone = false;
  bool pagamentoConfirmado = true;

  // 1. Imprime cada variável
  print('Médico ativo: $medicoAtivo');
  print('Consulta agendada: $consultaAgendada');
  print('Paciente tem telefone: $pacienteTemTelefone');
  print('Pagamento confirmado: $pagamentoConfirmado');

  // 2. Só confirma se o médico estiver ativo E a consulta estiver agendada
  if (medicoAtivo && consultaAgendada) {
    print('Consulta pode ser confirmada.');
  } else {
    print('Consulta NÃO pode ser confirmada.');
  }

  // 3. Aviso de contato faltante
  if (!pacienteTemTelefone) {
    print('Aviso: paciente sem telefone de contato cadastrado.');
  }

  // 4. Pagamento confirmado libera o atendimento
  if (pagamentoConfirmado) {
    print('Liberado para atendimento');
  }
}
