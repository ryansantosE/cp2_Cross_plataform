// Exercício 05 - num + Null Safety
void main() {
  // 1. num aceita inteiro e decimal
  num registro = 42;
  print('Registro (inteiro): $registro - tipo: ${registro.runtimeType}');
  registro = 42.5;
  print('Registro (decimal): $registro - tipo: ${registro.runtimeType}');

  // 2. Telefone anulável começando como null
  String? telefone;

  // 3. Observações anulável com texto
  String? observacoes = 'Paciente com histórico de hipertensão';

  // 4. ?? fornece um valor padrão quando for null
  print('Telefone: ${telefone ?? 'não informado'}');

  // 5. Só acessa o length depois de checar null (promoção de tipo)
  if (observacoes != null) {
    print('Observações tem ${observacoes.length} caracteres');
  }
}
