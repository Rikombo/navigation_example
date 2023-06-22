import 'package:flutter/material.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key, required this.color, required this.onClose});

  final Color color;
  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color Page',
        ),
      ),
      body: GestureDetector(
        onTap: () => _closePage(context),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void _closePage(BuildContext context) {
    onClose?.call();
    Navigator.of(context).pop(color);
  }
}
