import 'package:devquiz/application/constants/app_types.dart';

class TypeConverter {
  static LevelButtonType StringtoLevelButton(String text) {
    switch (text) {
      case "Fácil":
        return LevelButtonType.facil;
      case "Médio":
        return LevelButtonType.medio;
      case "Difícil":
        return LevelButtonType.dificil;
      case "Perito":
        return LevelButtonType.perito;
      default:
        return null as LevelButtonType;
    }
  }
}
