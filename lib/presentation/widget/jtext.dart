import 'package:flutter/material.dart';
import 'package:jayecommerce/config/app_setting.dart';

class JText extends StatelessWidget {
  final String data;
  late final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? selectionColor;
  JText({
    required this.data,
    this.style,
    this.selectionColor,
    this.textAlign,
    this.maxLines,
  }) {
    if (style == null) {
      style = TextStyle(
          color: AppSetting.JText_TextStyle_Color(),
          fontSize: AppSetting.TextStyle_FontSize() as double);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      selectionColor: selectionColor,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
