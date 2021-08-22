import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/orders.dart' show Orders;
import '/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your orders'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => OrderItem(
          orderData.orders[index],
        ),
        itemCount: orderData.orders.length,
      ),
    );
  }
}
