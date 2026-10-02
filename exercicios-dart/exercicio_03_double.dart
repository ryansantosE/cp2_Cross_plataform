// Exercício 03 - double
void main() {
  // Valores de três consultas (valores monetários usam double)
  double consulta1 = 180.0;
  double consulta2 = 350.5;
  double consulta3 = 500.0;

  // 1. Soma total
  double total = consulta1 + consulta2 + consulta3;
  print('Soma total: R\$ ${total.toStringAsFixed(2)}');

  // 2. Média
  double media = total / 3;
  print('Média: R\$ ${media.toStringAsFixed(2)}');

  // 3. 10% de desconto na consulta mais cara
  // reduce compara os valores dois a dois e mantém o maior
  double maisCara = [consulta1, consulta2, consulta3]
      .reduce((a, b) => a > b ? a : b);
  double comDesconto = maisCara * 0.9;
  print('Consulta mais cara: R\$ ${maisCara.toStringAsFixed(2)}');
  print('Com 10% de desconto: R\$ ${comDesconto.toStringAsFixed(2)}');

  // 4. Todos os valores com 2 casas decimais
  print('Consulta 1: R\$ ${consulta1.toStringAsFixed(2)}');
  print('Consulta 2: R\$ ${consulta2.toStringAsFixed(2)}');
  print('Consulta 3: R\$ ${consulta3.toStringAsFixed(2)}');
}
