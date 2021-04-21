import 'package:devquiz/application/constants/app_types.dart';
import 'package:devquiz/application/theme/app_buttons_styles.dart';
import 'package:devquiz/application/theme/app_text_styles.dart';
import 'package:flutter/cupertino.dart';

class LevelButtonWidget extends StatelessWidget {
  final LevelButtonType levelButtonType;

  LevelButtonWidget({
    Key? key,
    required this.levelButtonType,
  }) : super(key: key);

  LevelButtonStyle get buttonStyle =>
      levelButtonStyles[levelButtonType]!;

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
          levelButtonType.asString,
          style: AppTextStyles.levelButtonText(
            buttonStyle.textColor,
          ),
        ),
      ),
    );
  }
}
