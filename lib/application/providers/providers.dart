import 'package:devquiz/application/constants/app_colors.dart';
import 'package:provider/provider.dart';

final List<Provider> providers = [
  Provider<AppColors>.value(
    value: AppColors(),
  ),
];