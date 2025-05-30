import 'package:flutter/material.dart';
import 'package:history_app/core/utils/app_colors.dart';
import 'package:history_app/core/utils/app_font_style.dart';

class CustomTextFormField extends StatefulWidget {
  final String text;
  final bool? obscure;
  final bool showSuffix;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;

  const CustomTextFormField(
      {super.key,
      required this.text,
      required this.showSuffix,
      this.obscure,
      this.controller,
      this.onChanged,
      this.onFieldSubmitted});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscuree = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 32),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'please fill this field!';
          } else {
            return null;
          }
        },
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onFieldSubmitted,
        controller: widget.controller,
        obscureText: widget.obscure ?? obscuree,
        decoration: InputDecoration(
          suffixIcon: widget.showSuffix
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscuree = !obscuree;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye))
              : null,
          label: Text(widget.text),
          labelStyle: AppFontStyle.poppins500x18
              .copyWith(fontSize: 12, color: AppColors.lightGrey),
          enabledBorder: customBorder,
          focusedBorder: customBorder,
        ),
      ),
    );
  }
}

OutlineInputBorder customBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(
      color: AppColors.blackGrey,
    ));
