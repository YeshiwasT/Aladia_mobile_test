import 'package:aladia_mobile/feature/authentication/presentation/widgets/ButtonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app

@widgetbook.UseCase(name: 'Google', type: ButtonWithIcon)
Widget buildCoolButtonUseCase(BuildContext context) {
  return ButtonWithIcon(
    title: "Continue with google",
    imagePath: 'assets/google-icon.png',
  );
}

@widgetbook.UseCase(name: 'Apple', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseApple(BuildContext context) {
  return ButtonWithIcon(
    title: 'Apple File',
    imagePath: 'assets/apple-icon.png',
  );
}

@widgetbook.UseCase(name: 'FaceBook', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseFacebook(BuildContext context) {
  return ButtonWithIcon(
    title: 'Facebook File',
    imagePath: 'assets/facebook-icon.png',
  );
}

@widgetbook.UseCase(name: 'Empty', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseEmpty(BuildContext context) {
  return ButtonWithIcon(
    title: 'No Icon',
    imagePath: null,
  );
}
