import 'package:first_lab_rotanov_di/presentation/dialogs/error_dialog.dart';
import 'package:flutter/material.dart';

void showErrorDialog(
  BuildContext context, {
  required String? error,
}) {
  showDialog(
    context: context,
    builder: (_) => ErrorDialog(error),
  );
}
