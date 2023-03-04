import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProdcutPage extends StatelessWidget {
  const ProdcutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Center(
            child: Text('productpage'),
          )),
    );
  }
}
