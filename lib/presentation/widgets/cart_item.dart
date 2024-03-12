import 'package:flutter/material.dart';
import 'package:foma/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../../model/product.dart';

// class CartItem extends StatelessWidget {
//   String image;
//   String name;
//   String price;
//
//   CartItem({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.price,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height * 0.2,
//       child: Card(
//         elevation: 5,
//         color: Colors.white,
//         child: ListTile(
//           leading: Image.asset(image, fit: BoxFit.fill, height: 80, width: 80,),
//           title: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//                 name,
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//           ),
//           subtitle: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Text('${price}\$'),
//             ],
//           ),
//           trailing: Column(
//             children: [
//               MaterialButton(
//                   onPressed: () {},
//                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                 shape: const CircleBorder(side: BorderSide(color: Colors.black45)),
//                   child: const Icon(Icons.close, color: Colors.black45, size: 10,),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class CartItem extends StatefulWidget {
  final String name;
  final String image;
  final double price;
 Function() onTap;

  CartItem({
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
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.image),
                MaterialButton(
                    onPressed: () {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: CircleBorder(
                        side: BorderSide(
                      color: Colors.blueGrey,
                    )),
                    child: Icon(Icons.close, size: 16,)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(widget.image, height: 100, width: 100, fit: BoxFit.fill,),
                SizedBox(
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
