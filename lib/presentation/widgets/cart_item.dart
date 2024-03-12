import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String name;
  final String image;
  final double price;
  final Function() onTap;

  const CartItem({
    super.key,
    required this.name,
    required this.image,
    required this.price,
    required this.onTap
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.image),
                MaterialButton(
                    onPressed: () {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: const CircleBorder(
                        side: BorderSide(
                      color: Colors.blueGrey,
                    )),
                    child: const Icon(Icons.close, size: 16,)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(widget.image, height: 100, width: 100, fit: BoxFit.fill,),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        widget.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                        '${widget.price}\$',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
