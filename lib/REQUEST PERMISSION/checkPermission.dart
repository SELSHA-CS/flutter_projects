import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckPermission(),
    )
  );
}

class CheckPermission extends StatelessWidget {
  const CheckPermission({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: ()=> requestCameraPermission(context),
                color: Colors.pink[200],
                minWidth: 300,
                height: 50,
                child: Text("Camera Permission"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: requestMultiplePermissions,
                color: Colors.blue[200],
                minWidth: 300,
                height: 50,
                child: Text("Multiple Permission"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: requestPermissionWithOpenSettings,
                color: Colors.deepPurple[200],
                minWidth: 300,
                height: 50,
                child: Text("Permission with open settings"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void requestCameraPermission(BuildContext context) async{
    var status = await Permission.camera.status;
    if(status.isGranted){
      ImagePicker picker = ImagePicker();
      picker.pickImage(source: ImageSource.camera);
      print("Permission is granted");
    }
    else if(status.isDenied){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Permission Denied"))
      );
      if(await Permission.camera.request().isGranted){
        print('Permission was granted');
      }
    }
  }

  void requestMultiplePermissions() async{
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.storage,
      Permission.phone,
      Permission.photos
    ].request();
    print("Location permission: ${statuses[Permission.location]}"
        "storage permission: ${statuses[Permission.storage]}"
    );
  }

  void requestPermissionWithOpenSettings() async{
    openAppSettings();
  }
}