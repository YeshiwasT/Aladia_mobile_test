// import 'package:aladia_mobile/feature/authentication/presentation/widgets/ButtonWithIcon.dart';
// import 'package:flutter/material.dart';
// import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// // Import the widget from your app

// @widgetbook.UseCase(name: 'Default', type: ButtonWithIcon)
// Widget buildCoolButtonUseCase(BuildContext context) {
//   return ButtonWithIcon(
//     title: "Continue with google",
//     imagePath: "",
//   );
// }
import 'package:aladia_mobile/feature/authentication/presentation/widgets/ButtonWithIcon.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonWithIconWidgetbook {
  static WidgetbookCategory get category => WidgetbookCategory(
        name: 'Buttons',
        children: [
          WidgetbookComponent(
            name: 'ButtonWithIcon',
            useCases: [
              WidgetbookUseCase(
                name: ' Google Icon Button',
                builder: (context) => ButtonWithIcon(
                  title: 'Sign in with Google',
                  imagePath: 'assets/google-icon.png',
                ),
              ),
              WidgetbookUseCase(
                name: 'apple Icon Button',
                builder: (context) => ButtonWithIcon(
                  title: 'Upload File',
                  imagePath: 'assets/apple-icon.png',
                ),
              ),
              WidgetbookUseCase(
                name: 'facebook Icon Button',
                builder: (context) => ButtonWithIcon(
                  title: 'Upload File',
                  imagePath: 'assets/facebook-icon.png',
                ),
              ),
              WidgetbookUseCase(
                name: 'Text Only Button',
                builder: (context) => ButtonWithIcon(
                  title: 'No Icon',
                  imagePath: null,
                ),
              ),
            ],
          ),
        ],
      );
}
