// Exercício 02 - int
void main() {
  // IDs e contagens são números inteiros
  int idPaciente = 1;
  int idMedico = 10;
  int idConsulta = 100;
  int idadePaciente = 65;
  int quantidadeConsultasMes = 12;

  // 1. Soma dos IDs de paciente e médico
  print('Soma idPaciente + idMedico: ${idPaciente + idMedico}');

  // 2. Próximo ID de consulta
  print('Próximo ID de consulta: ${idConsulta + 1}');

  // 3. Prioridade por idade (60 anos ou mais)
  if (idadePaciente >= 60) {
    print('Paciente prioritário');
  } else {
    print('Paciente comum');
  }

  // 4. Dobro da quantidade de consultas no mês
  print('Dobro das consultas do mês: ${quantidadeConsultasMes * 2}');
}
