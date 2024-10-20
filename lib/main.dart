import 'package:aladia_mobile/core/app_themes/theme.dart';
import 'package:aladia_mobile/injectionContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/app_themes/theme_bloc/theme_bloc.dart';
import 'feature/authentication/presentation/bloc/bloc/login_bloc.dart';
import 'feature/authentication/presentation/screens/loginScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => serviceLocator<LoginBloc>(),
      ),
      BlocProvider(
        create: (context) => serviceLocator<ThemeBloc>(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // context.read<ThemeBloc>().add(InitializeThemeEvent());
    // final state = context.watch<ThemeBloc>().state;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Page',
        // You can use the library anywhere in the app even in theme
        // themeMode: state.themeMode,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: LoginScreen());
  }
}
