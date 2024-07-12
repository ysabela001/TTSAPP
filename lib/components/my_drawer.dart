import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../services/auth_provider.dart";
import "../themes/theme_provider.dart";
import "../themes/themes.dart";
import "my_list_tile.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>().themeData;
    final userLogedIn = context.watch<UserProvider>().isAuthenticated;

    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                DrawerHeader(
                    child: Center(
                  child:
                      Image.asset('assets/logo.png', width: 150, height: 150),
                )),
                const SizedBox(height: 25),
                MyListTile(
                  text: "Comprar",
                  icon: Icons.home,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/shop_page");
                  },
                ),
                MyListTile(
                    text: "Calçados",
                    icon: Icons.ice_skating,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/calcados_page");
                    }),
                MyListTile(
                    text: "Vestimentas",
                    icon: Icons.local_activity,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/vestimentas_page");
                    }),
                MyListTile(
                    text: "Acessórios",
                    icon: Icons.grade_rounded,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/acessorios_page");
                    }),
                MyListTile(
                    text: "Carrinho",
                    icon: Icons.shopping_cart,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/cart_page");
                    })
              ]),
              Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    children: [
                      MyListTile(
                          text: userLogedIn ? "Sair" : "Login",
                          icon: userLogedIn
                              ? Icons.logout
                              : Icons.account_circle_outlined,
                          onTap: () {
                            if (userLogedIn) {
                              Navigator.pop(context);
                              context.read<UserProvider>().signOut();
                            } else {
                              Navigator.pop(context);
                              Navigator.pushNamed(context, "/login_page");
                            }
                          }),
                      MyListTile(
                          text: theme == lightMode
                              ? "Modo Escuro"
                              : "Modo  Claro",
                          icon: theme == lightMode
                              ? Icons.toggle_off
                              : Icons.toggle_on_outlined,
                          onTap: () {
                            Provider.of<ThemeProvider>(context, listen: false)
                                .toggleTheme();
                          })
                    ],
                  ))
            ]));
  }
}
