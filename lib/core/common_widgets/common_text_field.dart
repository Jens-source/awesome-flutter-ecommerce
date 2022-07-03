import 'package:ecommerce/core/config/app_constants.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      required this.iconData})
      : super(key: key);

  final TextEditingController textController;
  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        textAlign: TextAlign.left,
        controller: textController,
        decoration: InputDecoration(
            filled: true,
            contentPadding: const EdgeInsets.only(left: 20.0),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black45),
              borderRadius: BorderRadius.circular(5.0),
            ),
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.black45),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.black45),
            ),
            hintText: hintText,
            suffixIcon: Icon(iconData)),
      ),
    );
  }
}
