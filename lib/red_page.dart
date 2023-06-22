import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

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
          color: Colors.red,
        ),
      ),
    );
  }

  Future<void> _showBluePage(BuildContext context) async {
/*    final bluePage = BluePage(
      color: Colors.pink,
      onClose: () {},
    );*/
    /*final route = MaterialPageRoute(
      builder: (context) => bluePage,
    );*/
    // final result = await Navigator.of(context).push(route);
  }
}
