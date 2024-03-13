import 'package:demoproject/Constant/color.dart';
import 'package:demoproject/flavor.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Flavor> flavors = [
    Flavor(name: 'Chocolate Cake'),
    Flavor(name: 'Strawberry Cake'),
    Flavor(name: 'Hazelnut Cake'),
    Flavor(name: 'Vanilla Cake'),
    Flavor(name: 'Blackforest Cake'),
    Flavor(name: 'RedVelvet Cake'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Blue,
        title: Text('Cake Flavors'),
      ),
      body: ListView.builder(
        itemCount: flavors.length,
        itemBuilder: (context, index) {
          final flavor = flavors[index];
          return Dismissible(
            key: Key(flavor.name),
            background: Container(
              color: Colors.green,
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Icon(Icons.favorite),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(Icons.delete),
                ),
                alignment: Alignment.centerRight,
              ),
            ),
            confirmDismiss: (direction) async {
              if (direction == DismissDirection.startToEnd) {
                setState(() {
                  flavors[index] =
                      flavor.copyWith(isFavorite: !flavor.isFavorite);
                });
                return false;
              } else {
                bool delete = true;
                final snackbarController =
                    ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Deleted ${flavor.name}'),
                    action: SnackBarAction(
                        label: 'Undo', onPressed: () => delete = false),
                  ),
                );
                await snackbarController.closed;
                return delete;
              }
            },
            onDismissed: (_) {
              setState(() {
                flavors.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(flavor.name),
              trailing: Icon(
                  flavor.isFavorite ? Icons.favorite : Icons.favorite_border),
            ),
          );
        },
      ),
    );
  }
}
