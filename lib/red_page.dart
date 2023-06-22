import 'package:flutter/material.dart';

import 'blue_page.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Red text',
        ),
      ),
      body: GestureDetector(
        onTap: () => _showBluePage(context),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  Future<void> _showBluePage(BuildContext context) async {
    final result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BluePage(
          color: Colors.green,
          onClose: () {},
        ),
      ),
    );
    if (result != null) {
      setState(() {
        color = result;
      });
    }
  }
}
