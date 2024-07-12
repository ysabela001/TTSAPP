import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import '../components/my_drawer.dart';
import '../components/my_product_tile.dart';
import '../models/shop.dart';
import '../services/auth_provider.dart';


class VestimentasPage extends StatelessWidget {
  const VestimentasPage({super.key});


  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop.where((element) => element.category == "vestimentas").toList();
    final userLogedId = context.watch<UserProvider>().isAuthenticated;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("Vestimentas de qualidade"),
            actions: [
               IconButton(
            onPressed: (){
              userLogedId 
              ? Navigator.pushNamed(context, '/profile_page')
              : Navigator.pushNamed(context, '/login_page');
            }, 
            icon: userLogedId
            ? const Icon(Icons.account_circle)
            : const Icon(Icons.account_circle_outlined)
          ),
              IconButton(
                onPressed: () => Navigator.pushNamed(context, "/cart_page"),
                icon: const Icon(Icons.shopping_cart_outlined),
              )
            ],            
            )
            ,
        drawer: MyDrawer(),
        backgroundColor:  Theme.of(context).colorScheme.surface,
        body: ListView(children: [

          const SizedBox(height: 25),

          Center(
              child: Text("Somente Produtos Selecionados ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  )
              )
          ),

          SizedBox(
            height: 550,
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  final product = products[index];

                  return MyProductTile(product: product,);
                }
              ),
          )
        ]
      )
    );
  }
}