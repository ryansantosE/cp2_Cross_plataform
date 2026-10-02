// Exercício 06 - List
void main() {
  // 1. Lista de status
  List<String> status = ['agendada', 'confirmada', 'cancelada'];

  // 2. Lista de valores de consultas
  List<double> precos = [180.0, 350.0, 280.0, 500.0];

  // 3. Percorre os status
  for (final item in status) {
    print('A consulta pode estar: $item');
  }

  // 4. Adiciona um novo preço
  precos.add(420.0);
  print('Preços: $precos');

  // 5. Filtra apenas valores >= 300
  List<double> acimaDe300 = precos.where((p) => p >= 300).toList();
  print('Valores >= 300: $acimaDe300');

  // 6. Quantidade total de preços
  print('Total de preços cadastrados: ${precos.length}');
}
