import 'package:ecommerce/app_bar.dart';
import 'package:ecommerce/serach_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [MyAppBar(), SizedBox(height: 20), SearchWidget()],
        ),
      ),
    );
  }
}
