// Exercício 07 - Set
void main() {
  // 1. Conjunto inicial de especialidades
  Set<String> especialidades = {'Cardiologia', 'Pediatria', 'Dermatologia'};

  // 2. Tenta adicionar duplicado: add devolve false e o Set não muda
  bool adicionou = especialidades.add('Cardiologia');
  print('Cardiologia adicionada de novo? $adicionou');

  // 3. Adiciona uma nova especialidade
  especialidades.add('Ortopedia');

  // 4. Conjunto final
  print('Especialidades: $especialidades');

  // 5. Verifica existência
  print('Tem Pediatria? ${especialidades.contains('Pediatria')}');

  // 6. Quantidade de especialidades únicas
  print('Especialidades únicas: ${especialidades.length}');
}
