import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../components/item_card.dart';
import '../provider/item_list.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  initState() {
    super.initState();
    getItems();
  }

  Future<void> getItems() async {
    try {
      await Provider.of(context, listen: false). getItems();
    } catch (exception) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    }
  }

  @override
  Widget build(BuildContext context) {

    final itemList = Provider.of<ItemList>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store Page'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        padding: const EdgeInsets.all(10),
        itemCount: itemList.items.length,
        itemBuilder: (context, index) => ItemCard(item: itemList.items[index],)
      ),
    );
  }
}