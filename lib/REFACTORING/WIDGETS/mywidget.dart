import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatelessWidget {

  final ImageProvider myimage;
  final String name;
  final String price;
  VoidCallback? onClick;
  Color? bgcolor;

  ProductWidget({super.key, required this.myimage, required this.name, required this.price, this.onClick, this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Card(
        color: bgcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: myimage,
              width: 100,
              height: 100,
            ),
            Text(name, style: GoogleFonts.habibi(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
            Text(price),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_border,), label: Text("WishList"),)),
                  Expanded(child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.shopping_cart,), label: Text("WishList"))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}