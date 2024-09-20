// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flower_app/model/item.dart';
import 'package:flower_app/pages/details_screen.dart';
import 'package:flower_app/provider/cart.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img2.jpg"),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/img1.jpg")),
                  accountEmail: Text("bander@.com"),
                  accountName: Text("Mahmoud Bander",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Ali Hassan © 2024",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          Consumer<Cart>(
            builder: ((context, cartInstancee, child) {
              return Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Text(
                          "${cartInstancee.selectedproducts.length}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(211, 164, 255, 193)),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "\$ ${cartInstancee.price}",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              );
            }),
          )
        ],
        backgroundColor: appbarGreen,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Details(product: items[index])));
                },
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.asset(items[index].imgPath),
                        ),
                      )
                    ],
                  ),
                  footer: GridTileBar(
                    backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing:
                        Consumer<Cart>(builder: ((context, carttt, child) {
                      return IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            carttt.add(items[index]);
                          },
                          icon: Icon(Icons.add));
                    })),
                    leading: Text("\$12.99"),
                    title: Text(
                      "",
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
