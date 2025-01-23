import 'package:flutter/material.dart';
import 'package:products_screen/core/resources/app_theme.dart';
import 'package:readmore/readmore.dart';

class CustomReadMoreText extends StatelessWidget {
  final int trimLines;
  final String text;
  const CustomReadMoreText(
      {super.key, required this.trimLines, required this.text});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      style: AppTheme.regularStyle,
      trimLines: trimLines,
      trimMode: TrimMode.Line,
      trimCollapsedText: " ",
      isExpandable: false,
    );
  }
}
