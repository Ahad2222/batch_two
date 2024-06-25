import 'package:batch_two/constants/app_colors.dart';
import 'package:batch_two/view/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField({
    this.label,
    this.hint,
    this.bottomMargin,
  });

  String? label;
  String? hint;
  double? bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomMargin ?? 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyText(
            text: label ?? '',
            size: 14,
            weight: FontWeight.w600,
            paddingBottom: 6,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: TextFormField(
              cursorColor: kPrimaryColor,
              style: TextStyle(
                color: kSecondaryColor,
              ),
              decoration: InputDecoration(
                hintText: hint ?? '',
                hintStyle: TextStyle(),
                filled: true,
                fillColor: kTertiaryColor,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
