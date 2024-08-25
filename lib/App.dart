import 'package:flutter/material.dart';
import 'package:store_app/screens/Home_screen.dart';
import 'package:store_app/screens/updata_product.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProduct.id: (context) => UpdateProduct(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
    );
  }
}
