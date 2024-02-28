
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_project/statemanagement/using_provider/products/view_products/wishlist_product.dart';

import 'package:provider/provider.dart';

import '../cotroller_products/counter_prdct.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
          primarySwatch: Colors.brown
      ),
      home: ChangeNotifierProvider(create: (context)=>ProductProvider(),
          child: ProductListScreen()),
    );
  }
}

class ProductListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (Context)=>Wishlist()));
          }, icon: Icon(Icons.favorite_border))
        ],

        title: Text("Shop"),centerTitle: true,
      ),
      body: Consumer<ProductProvider>(
          builder: (BuildContext context, ProductProvider productProvider, Widget? child){
            return ListView.builder(
                itemCount: productProvider.product.length,
                itemBuilder: (context,index){
                  var selectedProduct = productProvider.product[index];
                  return ListTile(
                    title: Text(productProvider.product[index].name),
                    subtitle: Text('price : \$${productProvider.product[index].price}'),
                    leading: CachedNetworkImage(
                      imageUrl:productProvider.product[index].imageUrl,
                      placeholder: (context,url)=>CircularProgressIndicator(),
                      errorWidget: (context,url,error)=>Icon(Icons.error),
                      width: 60,height: 60,fit: BoxFit.cover,
                    ),
                    trailing: IconButton(onPressed: (){
                      if(! productProvider.wishListProduct.contains(selectedProduct)){
                        productProvider.addToWishList(selectedProduct);
                      }else{
                        productProvider.removeFromWishList(selectedProduct);

                      }

                    }, icon: Icon(Icons.favorite,
                      color: productProvider.wishListProduct.contains(selectedProduct)?Colors.red:Colors.black,)),
                  );
                });
          }),
    );
  }
}