import 'package:devquiz/application/constants/app_colors.dart';
import 'package:devquiz/application/theme/app_buttons_styles.dart';
import 'package:devquiz/application/theme/app_text_styles.dart';
import 'package:flutter/cupertino.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;

  LevelButtonWidget({
    Key? key,
    required this.label,
  })   : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  LevelButtonStyle get buttonStyle => levelButtonStyles[label]!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: buttonStyle.backgroundColor,
          border: Border.fromBorderSide(BorderSide(
            color: buttonStyle.borderColor,
          ))),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 6,
        ),
        child: Text(
          label,
          style: AppTextStyles.levelButtonText(
            buttonStyle.textColor,
          ),
        ),
      ),
    );
  }
}
