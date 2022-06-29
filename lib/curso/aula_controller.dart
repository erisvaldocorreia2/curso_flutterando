import 'package:flutter/material.dart';

// ChangeNotifier é uma forma nativa do flutter para gerirmos estados
class AulaController extends ChangeNotifier {
  // inicializamos uma instancia da propria classe como boa pratica
  static AulaController instance = AulaController();

  bool isDarkTheme = false;

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    // usamos o notifyListeners para notificar as alterações
    // e assim podermos acionar o builder de reconstrução de tela
    notifyListeners();
  }
}
