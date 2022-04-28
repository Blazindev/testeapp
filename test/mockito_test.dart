import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:testeapp/Irepository.dart';
import 'package:testeapp/controller.dart';

class MockitoRepository extends Mock implements IRepository {}

void main(){

  MockitoRepository mockitoRepository = MockitoRepository();
  Controller controller = Controller(mockitoRepository);

  test("Quando eu chamar getNome com o valor 0", (){
    when(mockitoRepository.getNome(0)).thenReturn("Leonardo");

    controller.getNome(0);
    expect(controller.nome, "Leonardo")
;
  });

  test("Quando eu chamar getNome com o valor 1", (){
    when(mockitoRepository.getNome(1)).thenReturn("Vanessa");

    controller.getNome(1);
    expect(controller.nome, "Vanessa");

  });

  test("Quando eu chamar getNome com o valor 2", (){
    when(mockitoRepository.getNome(2)).thenReturn("Samuel");

    controller.getNome(2);
    expect(controller.nome, "Samuel");

  });

  test("Quando chamar getIdade", (){
    when(mockitoRepository.getIdade()).thenReturn(23);
    
    controller.getIdade();
    expect(controller.idade, 23);
  });

  //flutter test --no-sound-null-safety
}