import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: "AIzaSyDhTiiH1N2n5Ds-I0a3vkFdvJeftLS8qJU",
      appId: "1:60364394705:android:c12e12423f1813faabf5f0",
      messagingSenderId: "",
      projectId: "mygsignin-348e1",
      storageBucket: "mygsignin-348e1.appspot.com"),
  );
  runApp(MaterialApp(home: MediaStorage(),));
}

class MediaStorage extends StatefulWidget {
  const MediaStorage({super.key});

  @override
  State<MediaStorage> createState() => _MediaStorageState();
}

class _MediaStorageState extends State<MediaStorage> {

  FirebaseStorage storage = FirebaseStorage.instance;

  get index => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Storage"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
              onPressed: () => upload("Camera"),
              icon: const Icon(
                Icons.camera,
                color: Colors.white,))
        ],),
      body: Padding(padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () => upload("Camera"),
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("Camera")),

              ElevatedButton.icon(
                  onPressed: () => upload("Gallery"),
                  icon: const Icon(Icons.photo),
                  label: const Text("Gallery"))
            ],
          ),
          Expanded(child: FutureBuilder(
              future: loadMedia(),
              builder: (context, snapshot){
                if(snapshot.connectionState == ConnectionState.done){
                  final Map<String, dynamic> image = snapshot.data![index];
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: ListTile(
                            leading: Image.network(image['imageUrl']),
                            title: Text(image['credit']),
                            subtitle: Text(image['date']),
                            trailing: IconButton(
                                onPressed: () async{
                                  await storage.ref(image['path']).delete();
                                  setState(() {});
                                }, 
                                icon: Icon(Icons.delete)),
                      ),
                    );
                  });
                }
                return CircularProgressIndicator();
                
                

              }))
        ],
      ),
      ),
    );
  }

  Future<void> upload(String imgSource) async{
    final picker = ImagePicker();   //object of image picker
    XFile? pickedImage;     //to store img
    try{
      pickedImage = await picker.pickImage(
          source: imgSource == "Camera"
              ? ImageSource.camera
              : ImageSource.gallery);///ternary operator
      final String fileName = path.basename(pickedImage!.path);
      File imageFile = File(pickedImage.path);
      try{
        await storage.ref(fileName).putFile(imageFile, SettableMetadata(customMetadata: {
          'pic_credit':"SomeOne😎",
          'date': "05/02/2024"
        }));
        setState(() {});
      }on FirebaseException catch(e){
        print(e);
      }
    }catch(error){
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> loadMedia() async{
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;

    await Future.forEach(allfiles, (singleFile) async{
      final String fileUrl = await singleFile.getDownloadURL();
      final FullMetadata metadata = await singleFile.getMetadata();

      images.add({
        'imageUrl': fileUrl,
        'path': singleFile.fullPath,
        'credit': metadata.customMetadata?['pic_credit'] ?? "NO DATA",
        'date': metadata.customMetadata?["date"] ?? "NO DATE AVAILABLE"
      });
    });
    return images;
  }

}
