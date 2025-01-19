import 'package:flutter/material.dart';

class ResponsiveDesign extends StatelessWidget {
  const ResponsiveDesign({super.key});

  @override
  Widget build(BuildContext context) {
    // final : run time
    // const : compile time
    final currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive'),
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: currentWidth < 600 ? Theme.of(context).colorScheme.secondaryFixedDim : Theme.of(context).colorScheme.onInverseSurface,
      body: Center(
        child: Text(currentWidth.toString()),
      ),
    );
  }
}
