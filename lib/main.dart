import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Pork'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}



class Product {
  const Product({this.name});
  final String name;
}

class ShoppingListItem extends StatefulWidget {
  ShoppingListItem({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  _ShoppingListItemState createState() => _ShoppingListItemState();
}

class _ShoppingListItemState extends State<ShoppingListItem> {
  bool inCart = false;

  Color _getColor(BuildContext context){
    return inCart ?  Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(){
    if(!inCart) return null;
    return TextStyle(
        color: Colors.black45,
        decoration: TextDecoration.lineThrough
    );
  }

  void _handleOnTap(){
    setState(() {
      this.inCart = !inCart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile (
      onTap: (){
        _handleOnTap();
      },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(widget.product.name[0]),
      ),
      title: Text(widget.product.name, style: _getTextStyle()),
    );
  }
}

class ShoppingList extends StatelessWidget {
  ShoppingList({Key key,this.products}) : super(key: key);
  final List<Product> products;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping List"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: this.products.map((e) => ShoppingListItem(
          product: e,
        )).toList(),
      ),
    );
  }
}


//class ShoppingListItem extends StatelessWidget {
//  ShoppingListItem({this.product, this.inCart, this.callback}) : super(key: ObjectKey(product));
//  final Product product;
//  final bool inCart;
//  final CartChangedCallback callback;
//
//  Color _getColor(BuildContext context){
//    return inCart ?  Colors.black54 : Theme.of(context).primaryColor;
//  }
//
//  TextStyle _getTextStyle(){
//    if(!inCart) return null;
//    return TextStyle(
//        color: Colors.black45,
//        decoration: TextDecoration.lineThrough
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ListTile (
//      onTap: (){
//        callback(product, inCart);
//      },
//      leading: CircleAvatar(
//        backgroundColor: _getColor(context),
//        child: Text(this.product.name[0]),
//      ),
//      title: Text(product.name, style: _getTextStyle()),
//    );
//  }
//
//}
//
//
//class ShoppingList extends StatefulWidget {
//  ShoppingList({Key key,this.products}) : super(key: key);
//  final List<Product> products;
//
//  @override
//  _ShoppingListState createState() => _ShoppingListState();
//
//}
//
//class _ShoppingListState extends State<ShoppingList> {
//  Set<Product> _shoppingCart = Set<Product>();
//
//  void _handleCartChanged(Product product, bool inCart){
//    setState(() {
//      if(!inCart){
//        _shoppingCart.add(product);
//      } else {
//        _shoppingCart.remove(product);
//      }
//    });
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Shopping List"),
//      ),
//      body: ListView(
//        padding: EdgeInsets.symmetric(vertical: 8.0),
//        children: widget.products.map((e) => ShoppingListItem(
//          product: e,
//          inCart: _shoppingCart.contains(e),
//          callback: _handleCartChanged
//        )).toList(),
//      ),
//    );
//  }
//}





















//class ShoppingList extends StatefulWidget {
//  ShoppingList({Key key, this.products}) : super(key: key);
//
//  final List<Product> products;
//
//  // The framework calls createState the first time a widget
//  // appears at a given location in the tree.
//  // If the parent rebuilds and uses the same type of
//  // widget (with the same key), the framework re-uses the State object
//  // instead of creating a new State object.
//
//  @override
//  _ShoppingListState createState() => _ShoppingListState();
//}
//
//class _ShoppingListState extends State<ShoppingList> {
//  Set<Product> _shoppingCart = Set<Product>();
//
//  void _handleCartChanged(Product product, bool inCart) {
//    setState(() {
//      // When a user changes what's in the cart, you need to change
//      // _shoppingCart inside a setState call to trigger a rebuild.
//      // The framework then calls build, below,
//      // which updates the visual appearance of the app.
//      if (!inCart)
//        _shoppingCart.add(product);
//      else
//        _shoppingCart.remove(product);
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Shopping List'),
//      ),
//      body: ListView(
//        padding: EdgeInsets.symmetric(vertical: 8.0),
//        children: widget.products.map((Product product) {
//          return ShoppingListItem(
//            product: product,
//            inCart: _shoppingCart.contains(product),
//            onCartChanged: _handleCartChanged,
//          );
//        }).toList(),
//      ),
//    );
//  }
//}

