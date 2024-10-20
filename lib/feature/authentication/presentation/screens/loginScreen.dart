import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_themes/theme_bloc/theme_bloc.dart';
import '../bloc/bloc/login_bloc.dart';
import '../widgets/ButtonWithIcon.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginpageState();
}

class _LoginpageState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginError) {
          setState(() {
            isLoading = false;
          });
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
        if (state is LoginLoaded) {
          setState(() {
            isLoading = false;
          });
          const snackBar = SnackBar(
            content: Text('User Register Sucessfully'),
            duration: Duration(seconds: 5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Theme.of(context).brightness == Brightness.light
                            ? context
                                .read<ThemeBloc>()
                                .add(ToggleThemeEvent(thememode: "dark"))
                            : context
                                .read<ThemeBloc>()
                                .add(ToggleThemeEvent(thememode: "light"));
                      },
                      child: Container(
                          child:
                              Theme.of(context).brightness == Brightness.light
                                  ? Icon(
                                      Icons.brightness_2,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.brightness_4,
                                      color: Colors.white,
                                    )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage('assets/home.png'),
                          width: 100,
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Welcome to Aladia",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                "Create or access your account from hear",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your email',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: TextField(
                  cursorColor: Colors.black, // Set cursor color to black
                  style: TextStyle(
                    color: Colors.black, // Set text color to black
                    fontSize: 16,
                  ),

                  controller: emailController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey[500],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Email',
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 16)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                child: TextField(
                  cursorColor: Colors.black, // Set cursor color to black
                  style: TextStyle(
                    color: Colors.black, // Set text color to black
                    fontSize: 16,
                  ),

                  controller: passwordController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey[500],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 16)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    isLoading = true;
                  });
                  context.read<LoginBloc>().add(LoginEventCalled(
                      email: emailController.text,
                      password: passwordController.text));
                },
                child: Container(
                  width: 300,
                  height: 40,
                  child: Center(
                    child: isLoading
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        : Text('Enter',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18)),
                  ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWithIcon(
                title: "Sign in with Google",
                imagePath: "assets/google-icon.png",
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWithIcon(
                title: "Sign in with Facebook",
                imagePath: "assets/facebook-icon.png",
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWithIcon(
                title: "Sign in with Apple",
                imagePath: "assets/apple-icon.png",
              ),
              SizedBox(
                height: 30,
              ),
              Text("Terms & conditions",
                  style: TextStyle(color: Colors.grey, fontSize: 18))
            ],
          )),
        ),
      ),
    );
  }
}
