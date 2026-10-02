// Exercício 01 - String
void main() {
  // Dados textuais da consulta
  String nomePaciente = 'Carlos Andrade';
  String nomeMedico = 'Dr. Roberto Silva';
  String especialidade = 'Cardiologia';
  String emailPaciente = 'carlos@email.com';

  // 1. Ficha completa usando interpolação
  print('===== FICHA DA CONSULTA =====');
  print('Paciente: $nomePaciente');
  print('Médico: $nomeMedico ($especialidade)');
  print('E-mail: $emailPaciente');

  // 2. Nome do paciente em maiúsculas
  print('Paciente em maiúsculas: ${nomePaciente.toUpperCase()}');

  // 3. Quantidade de caracteres do e-mail
  print('Caracteres do e-mail: ${emailPaciente.length}');

  // 4. O e-mail contém '@'? (true/false)
  print('E-mail contém @? ${emailPaciente.contains('@')}');
}
