import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the widget from your app
import 'package:aladia_mobile/plus_icon.dart';

@widgetbook.UseCase(name: 'Default', type: PlusIcon)
Widget buildCoolButtonUseCase(BuildContext context) {
  return PlusIcon();
}
