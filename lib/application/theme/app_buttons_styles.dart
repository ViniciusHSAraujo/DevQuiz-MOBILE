import 'package:devquiz/application/constants/app_colors.dart';
import 'package:devquiz/application/constants/app_types.dart';
import 'package:flutter/material.dart';

class LevelButtonStyle {
  Color backgroundColor;
  Color borderColor;
  Color textColor;

  LevelButtonStyle({
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });
}


final Map<LevelButtonType, LevelButtonStyle> levelButtonStyles = {
  LevelButtonType.facil: LevelButtonStyle(
      backgroundColor: AppColors.levelButtonFacil,
      borderColor: AppColors.levelButtonBorderFacil,
      textColor: AppColors.levelButtonTextFacil),
  LevelButtonType.medio: LevelButtonStyle(
      backgroundColor: AppColors.levelButtonMedio,
      borderColor: AppColors.levelButtonBorderMedio,
      textColor: AppColors.levelButtonTextMedio),
  LevelButtonType.dificil: LevelButtonStyle(
      backgroundColor: AppColors.levelButtonDificil,
      borderColor: AppColors.levelButtonBorderDificil,
      textColor: AppColors.levelButtonTextDificil),
  LevelButtonType.perito: LevelButtonStyle(
      backgroundColor: AppColors.levelButtonPerito,
      borderColor: AppColors.levelButtonBorderPerito,
      textColor: AppColors.levelButtonTextPerito),
};
