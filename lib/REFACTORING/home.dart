import 'package:flutter/material.dart';
import 'package:flutter_projects/REFACTORING/WIDGETS/mywidget.dart';

void main(){
  runApp(
    MaterialApp(
      home: RefactoringHome(),
    ),
  );
}
class RefactoringHome extends StatelessWidget {
  const RefactoringHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refactoring Widget"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ), 
        itemBuilder: ((context, index) => ProductWidget(
          bgcolor: Colors.black,
          onClick: (){},
          myimage: AssetImage("assets/farmers_images/1.jpg"), 
          name: "Brocolli", 
          price: "\$200/kg",
        )),
      ),
    );
  }
}