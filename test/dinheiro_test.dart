import 'package:test/test.dart';

void main(){
  const dinheiro = 2000.0;

  test("Tem dinheiro?", () {
    assert(dinheiro != null && dinheiro >= 0);
  });

  test("Calculo normal dinheiro", (){
    const aumento = 20.0;
    const dinheiroCalculado = dinheiro + aumento;

    expect(calcularDinheiro(dinheiro, aumento, false), equals(dinheiroCalculado));
  });

    test("Calculo percentual de dinheiro", (){
    const aumento = 20.0;
    const dinheiroCalculado = dinheiro + (dinheiro * aumento / 100);

    expect(calcularDinheiro(dinheiro, aumento, true), equals(dinheiroCalculado));
  });

}

double calcularDinheiro(double dinheiro, double aumento, bool porcentagem){

  if(porcentagem){
    return dinheiro + (dinheiro * aumento / 100);
  }

  return dinheiro + aumento;
}