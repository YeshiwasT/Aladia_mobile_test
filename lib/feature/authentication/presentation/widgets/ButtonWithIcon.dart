import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWithIcon extends StatelessWidget {
  String title;
  String? imagePath;
  ButtonWithIcon({super.key, required this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imagePath != null)
            Image.asset(
              imagePath ?? "assets/google-icon.png",
              height: 20,
              width: 20,
            ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 18),
          )
        ],
      ),
    );
  }
}
