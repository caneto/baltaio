import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/cart.bloc.dart';
import 'package:shopping/models/cart-item.model.dart';
import 'package:shopping/models/product-list-item.model.dart';

class AddToCart extends StatelessWidget {
  final ProductListItemModel item;

  AddToCart({required this.item});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<CartBloc>(context);
    var cartItem = new CartItemModel(
      id: item.id,
      price: item.price,
      image: item.image,
      quantity: 1,
      title: item.title,
    );

    if (!bloc.itemInCart(cartItem)) {
      return Container(
        width: 80,
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
          ),
          child: Icon(Icons.add_shopping_cart),
          onPressed: () {
            bloc.add(
              cartItem,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("${item.title} adicionado"),
                duration: Duration(milliseconds: 300),
              ),
            );
          },
        ),
      );
    } else {
      return Container(
        width: 80,
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: Icon(Icons.remove_shopping_cart),
          onPressed: () {
            bloc.remove(
              cartItem,
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("${item.title} removido"),
                duration: Duration(milliseconds: 300),
              ),
            );
          },
        ),
      );
    }
  }
}
