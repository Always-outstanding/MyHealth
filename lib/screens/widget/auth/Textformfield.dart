import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final IconData icondata;
  final TextEditingController? controller;
  final String? Function(String?) valid;
  final bool? obscureText;
  final bool? ReadOnly;
  final void Function()? onTapIcon;
  final void Function()? onTap;

  const CustomTextFormAuth(
      {super.key,
      this.onTap,
      this.ReadOnly,
      this.onTapIcon,
      this.obscureText,
      required this.hinttext,
      required this.icondata,
      required this.valid,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        readOnly: ReadOnly == null || ReadOnly == false ? false : true,
        validator: valid,
        obscureText: obscureText == null || obscureText == false ? false : true,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        cursorColor: Colors.red,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            hintStyle: TextStyle(fontFamily: 'GoogleFonts.rubik'),
            filled: true,
            suffixIcon: InkWell(
              child: Icon(icondata),
              onTap: onTapIcon,
            ),
            hintText: hinttext),
        textAlign: TextAlign.end,
        onTap: onTap,
      ),
    );
  }
}
