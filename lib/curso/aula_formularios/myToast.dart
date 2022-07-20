// ignore_for_file: file_names

import 'package:flutter/material.dart';

void toast(
  BuildContext context,
  String text,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      width: 300,
      content: Text(text),
    ),
  );
}
