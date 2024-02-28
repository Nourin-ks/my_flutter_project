import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_project/statemanagement/using_getx/getx_cart/view/screen/product_list_screen.dart';


void main()=> runApp(MyAppCart());

class MyAppCart extends StatelessWidget {
  const MyAppCart({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListScreen(),
    );
  }
}
