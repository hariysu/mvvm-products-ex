
import 'package:flutter/material.dart';

class LaunchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Launch Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/products-view');
          },
          child: const Text('Get Products'),
        ),
      ),
    );
  }
}
