import 'package:flutter/material.dart';

class shopcart_page extends StatefulWidget {
  @override
  _shopcart_pageState createState() => _shopcart_pageState();
}

class _shopcart_pageState extends State<shopcart_page> {
  // Creamos una lista de productos que se mostrarán en el carrito
  List<String> products = ['Producto 1', 'Producto 2', 'Producto 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de compras'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(products[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Eliminamos el producto de la lista al hacer clic en el botón de eliminar
                setState(() {
                  products.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
