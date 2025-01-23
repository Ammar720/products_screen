import 'package:flutter/material.dart';
import 'package:products_screen/core/widgets/custom_read_more_text.dart';

class ErrorIndicator extends StatelessWidget {
  final String message;

  const ErrorIndicator({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomReadMoreText(trimLines: 10, text: message));
  }
}
