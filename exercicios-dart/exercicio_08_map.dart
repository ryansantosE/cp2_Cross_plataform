// Exercício 08 - Map
void main() {
  // Map com chaves String e valores de tipos variados
  Map<String, dynamic> consulta = {
    'id': 1,
    'paciente': 'Carlos Andrade',
    'medico': 'Dr. Roberto Silva',
    'valor': 350.0,
    'status': 'agendada',
    'telefone': null,
  };

  // 1. Paciente, médico e valor
  print('Paciente: ${consulta['paciente']}');
  print('Médico: ${consulta['medico']}');
  print('Valor: R\$ ${(consulta['valor'] as double).toStringAsFixed(2)}');

  // 2. Atualiza o status
  consulta['status'] = 'confirmada';

  // 3. Atualiza o telefone
  consulta['telefone'] = '(11) 98765-4321';

  // 4. Percorre todos os pares chave => valor
  consulta.forEach((chave, valor) {
    print('$chave => $valor');
  });
}
