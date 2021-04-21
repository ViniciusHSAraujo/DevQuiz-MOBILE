enum LevelButtonType {
  facil,
  medio,
  dificil,
  perito,
}

extension LevelButtonTypeExtension on LevelButtonType {
  String get asString {
    switch (this) {
      case LevelButtonType.facil:
        return "Fácil";
      case LevelButtonType.medio:
        return "Médio";
      case LevelButtonType.dificil:
        return "Difícil";
      case LevelButtonType.perito:
        return "Perito";
      default:
        return "";
    }
  }
}