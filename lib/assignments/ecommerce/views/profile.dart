import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'edit',
                style: TextStyle(color: Colors.grey),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Profile',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('viewprofile'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('orders'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('wishlist'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('giftcards'), Icon(Icons.arrow_right)],
              ),
            ),
            Text('Settings',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('shipping&return'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('help'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('contact us'), Icon(Icons.arrow_right)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('about us '), Icon(Icons.arrow_right)],
              ),
            ),
            SizedBox(height: 100,),
            InkWell(
              //  onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Checkout())),
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                      'Log out ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )

          ],
        ),
      ),
    );
  }
}