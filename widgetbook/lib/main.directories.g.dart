// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/ButtonWithIcon.dart' as _i3;
import 'package:widgetbook_workspace/login_screen_widgetbook.dart' as _i2;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'feature',
    children: [
      _i1.WidgetbookFolder(
        name: 'authentication',
        children: [
          _i1.WidgetbookFolder(
            name: 'presentation',
            children: [
              _i1.WidgetbookFolder(
                name: 'screens',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'LoginScreen',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Login',
                      builder: _i2.buildLoginUseCase,
                    ),
                  )
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'widgets',
                children: [
                  _i1.WidgetbookComponent(
                    name: 'ButtonWithIcon',
                    useCases: [
                      _i1.WidgetbookUseCase(
                        name: 'Apple',
                        builder: _i3.buildCoolButtonUseCaseApple,
                      ),
                      _i1.WidgetbookUseCase(
                        name: 'Empty',
                        builder: _i3.buildCoolButtonUseCaseEmpty,
                      ),
                      _i1.WidgetbookUseCase(
                        name: 'FaceBook',
                        builder: _i3.buildCoolButtonUseCaseFacebook,
                      ),
                      _i1.WidgetbookUseCase(
                        name: 'Google',
                        builder: _i3.buildCoolButtonUseCase,
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      )
    ],
  )
];
