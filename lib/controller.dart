import 'package:flutter/cupertino.dart';

import 'Irepository.dart';

class Controller extends ChangeNotifier {
  Controller(this.repository);

  final IRepository repository;
  String nome = "";
  int idade = 0;

  void getNome(int id){
    nome = repository.getNome(id);
    notifyListeners();
  }

  void getIdade() async {
    idade = repository.getIdade();
    notifyListeners();
  }
}
