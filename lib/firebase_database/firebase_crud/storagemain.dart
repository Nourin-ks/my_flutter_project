import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDhTiiH1N2n5Ds-I0a3vkFdvJeftLS8qJU",
        appId: "1:60364394705:android:c12e12423f1813faabf5f0",
        messagingSenderId: "",
        projectId: "mygsignin-348e1",
        storageBucket: "mygsignin-348e1.appspot.com"
    ),
  );
  runApp(MaterialApp(home: FirebaseCRUD(),));
}

class FirebaseCRUD extends StatefulWidget {
   const FirebaseCRUD({super.key});

   @override
   State<FirebaseCRUD> createState() => _FirebaseCRUDState();
 }

 class _FirebaseCRUDState extends State<FirebaseCRUD> {
  final cname = TextEditingController();
  final cemail = TextEditingController();
  late CollectionReference _userCollection; ///object of collection in db

  @override
  void initState() {
    _userCollection= FirebaseFirestore.instance.collection("users");
    super.initState();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text("User Data"),
         backgroundColor: Colors.yellow,
       ),

       body: StreamBuilder<QuerySnapshot>(
           stream: readUser(),
           builder: (context, snapshot){
             if(snapshot.hasError){
               return Center(child: Text('Error ${snapshot.error}'));
            }
             if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }
            final users = snapshot.data!.docs;
             return ListView.builder(
                 itemCount: users.length,
                 itemBuilder: (context, index){
                   final user = users[index];
                   final userId = user.id;
                   final userName = user["name"];
                   final userEmail = user["email"];

                   return ListTile(
                     title: Text('$userName', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                     ),
                     subtitle: Text('$userEmail', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                     ),
                     trailing: Wrap(
                       children: [
                         IconButton(onPressed: (){
                           editUserData(userId);
                         }, icon: const Icon(Icons.edit)),
                         IconButton(onPressed: (){
                           deleteUser(userId);
                         }, icon: const Icon(Icons.delete)),
                       ],
                     ),
                   );

             });
       }),

       floatingActionButton: FloatingActionButton(
         onPressed: ()=> createUser(),
         child: Icon(Icons.add_reaction_outlined),
       backgroundColor: Colors.yellow,),
       
     );
   }

  void createUser() {
     showDialog(
         context: context,
         builder: (context){
       return AlertDialog(
         title: const Text("Add User"),
         content: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             TextField(
               controller: cname,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Name",
               ),
             ),
             const SizedBox(height: 10,),
             TextField(
               controller: cemail,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Email",
               ),
             ),
           ],
         ),
         actions: [
           OutlinedButton(onPressed:(){
             Navigator.of(context).pop();
           } ,
               child: const Text("cancel")),
           OutlinedButton(
               onPressed: ()=> addUsertoDB(cname.text, cemail.text),
               child: const Text("Create User"))
         ],
       );
     });
  }

  Future<void> addUsertoDB(String name, String email) async{
     return _userCollection.add({
       "name" :name,
       "email" :email
     }).then((value) {
       print("User added successfully");
       cname.clear();
       cemail.clear();
       Navigator.of(context).pop();
     }).catchError((error){
       print("Failed to add data $error");
     });
  }

  ///read all the documents through QuerySnapshot
  Stream<QuerySnapshot> readUser() {
    return _userCollection.snapshots();
  }
/// show bottom sheet to edit userdata
  void editUserData(String userId) {
    var uname = TextEditingController();
    var uemail = TextEditingController();

    showModalBottomSheet(
        context: context,
        builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: uname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name",
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: uemail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {
                updateUser(userId, uname.text, uemail.text);
              }, child: Text("Update User"))
            ]
        ),
      );
    });
  }

  ///update user
  Future<void> updateUser(String userId, String uname, String uemail) async {
    var updatedvalues = {"name":uname, "email":uemail};
    return _userCollection.doc(userId).update(updatedvalues).then((value) {
      Navigator.of(context).pop();
      print("User data updated successfully");
    }).catchError((error){
      print("User data updation Failed");
    });

  }

  Future<void> deleteUser(var id) async {
    return _userCollection.doc(id).delete().then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("User deleted successfully"))
      );
    }).catchError((error){
      print("User deletion failed $error");
    });
  }
 }
