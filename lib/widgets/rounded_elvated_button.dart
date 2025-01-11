import 'package:bloc_project_todo/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.color = AppColor.appColor,
  });

  final String buttonText;
  final Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        elevation: MaterialStateProperty.all(4), // Example elevation
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width, 45),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: AppColor.appBarColor,
        ),
      ),
    );
  }
}
