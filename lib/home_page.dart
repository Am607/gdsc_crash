import 'dart:developer';

import 'package:ecommerce/app_bar.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/product_page.dart';
import 'package:ecommerce/serach_widget.dart';
import 'package:ecommerce/tab_view.dart';
import 'package:flutter/material.dart';

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
            const TabView(),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              // padding: EdgeInsets.all(20),
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const ProdcutPage()));
                    },
                    child: Product()),
                Product(),
                Product(),
                Product()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            height: 160,
            width: 142,
            decoration: BoxDecoration(
              color: Color(0xffD3D3D3).withOpacity(0.6),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xffD9D9D9), width: 1),
            ),
            child: Image.asset(image1),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Nike Air Force 1',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              '\₹199.99',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }
}
