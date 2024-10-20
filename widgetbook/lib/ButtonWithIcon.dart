import 'package:aladia_mobile/feature/authentication/presentation/widgets/ButtonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/login_screen_widgetbook.dart';

// Import the widget from your app

@widgetbook.UseCase(name: 'Google', type: ButtonWithIcon)
Widget buildCoolButtonUseCase(BuildContext context) {
  return ButtonWithIcon(
    title: context.knobs.string(
      label: 'Title Label',
      initialValue: "Continue with google",
    ),
    imagePath: context.knobs
        .string(label: 'image Label', initialValue: 'assets/google-icon.png'),
  );
}

@widgetbook.UseCase(name: 'Apple', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseApple(BuildContext context) {
  return ButtonWithIcon(
    title: context.knobs.string(
      label: 'Apple File',
      initialValue: "Continue with Apple",
    ),
    imagePath: context.knobs
        .string(label: 'image Label', initialValue: 'assets/apple-icon.png'),
  );
}

@widgetbook.UseCase(name: 'FaceBook', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseFacebook(BuildContext context) {
  return ButtonWithIcon(
    title: context.knobs.string(
      label: 'Facebook File',
      initialValue: "Continue with Facebook",
    ),
    imagePath: context.knobs
        .string(label: 'image Label', initialValue: "assets/facebook-icon.png"),
  );
}

@widgetbook.UseCase(name: 'Empty', type: ButtonWithIcon)
Widget buildCoolButtonUseCaseEmpty(BuildContext context) {
  return ButtonWithIcon(
    title: context.knobs.string(
      label: 'Title Label',
      initialValue: 'No Icon',
    ),
  );
}
