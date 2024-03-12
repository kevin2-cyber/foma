import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  String image;
  String name;
  String price;
  VoidCallback onTap;

  CartItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: Image.asset(image, fit: BoxFit.fill, height: 50, width: 50,),
        title: Text(
            name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(price),
        trailing: MaterialButton(
            onPressed: () {},
          height: 25,
          minWidth: 25,
          shape: CircleBorder(side: BorderSide(color: Colors.black45)),
            child: Icon(Icons.close, color: Colors.black45, size: 10,),
        ),
      ),
    );
  }
}
