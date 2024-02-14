import 'package:flutter/material.dart';
import 'package:my_flutter_project/modelclass/books/product.dart';

void main(){
  runApp(MaterialApp(home: BookListScreen(),));
}

class BookListScreen extends StatelessWidget {
  final List<book> books = [
    book(name: "Harry Potter and the Philosopher's Stone", desc: "Harry Potter and the Philosopher's Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling's debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry.", imageUrl: "assets/images/hp1.jpg"),
    book(name: "Harry Potter and the Chamber of Secrets",  desc: "Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and the second novel in the Harry Potter series.Major conflictHarry, Ron, and Hermione discover and destroy the creature that is coming out of the Chamber of Secrets and petrifying students ", imageUrl: "assets/images/hp2.jpg"),
    book(name: "Harry Potter and the Prisoner of Azkaban", desc: "Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.", imageUrl: "assets/images/hp3.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Book App"),
      ),

      body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.white,
              titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              title: Text(books[index].name),
              subtitle: Text(books[index].desc),
              leading: Image.network(books[index].imageUrl),
            );
          }),
    );
  }
}
