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
          children: [
            const MyAppBar(),
            const SizedBox(height: 20),
            const SearchWidget(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Button(
                    isSelected: true,
                    name: 'ALL',
                  ),
                  Button(
                    isSelected: false,
                    name: 'Nike',
                  ),
                  Button(
                    isSelected: false,
                    name: 'Adidas',
                  ),
                  Button(
                    isSelected: false,
                    name: 'Converse',
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String name;
  final bool isSelected;
  const Button({
    super.key,
    required this.name,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35, top: 17),
      width: 60,
      height: 32,
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: isSelected ? Color(0xFF000000) : Colors.grey, width: 1),
      ),
      child: Center(
          child: Text(
        name,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600),
      )),
    );
  }
}
