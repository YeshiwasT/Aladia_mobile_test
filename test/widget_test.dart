// import 'package:aladia_mobile/feature/authentication/presentation/bloc/bloc/login_bloc.dart';
// import 'package:aladia_mobile/feature/authentication/presentation/screens/loginScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';


// void main() {
//   testWidgets('LoginScreen renders email, password fields, and button', (WidgetTester tester) async {
//     // Provide a simple Bloc for the test environment
//     await tester.pumpWidget(
//       MaterialApp(
//         home: BlocProvider(
//           create: (_) => LoginBloc(logInUseCase: null), // Use a mock or null if not needed for rendering
//           child: const LoginScreen(),
//         ),
//       ),
//     );

//     // Wait for the widget to build
//     await tester.pump();

//     // Check if the email TextField exists
//     expect(find.byType(TextField), findsNWidgets(2)); // 2 text fields (email and password)
//     expect(find.text('Enter your email'), findsOneWidget);

//     // Check if the Enter button exists
//     expect(find.text('Enter'), findsOneWidget);
//   });
// }
