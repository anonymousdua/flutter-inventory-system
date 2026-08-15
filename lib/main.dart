import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/screens/main_content_screen.dart';
import 'package:inventory_management/utils/constants.dart';
import 'package:inventory_management/widgets/app_header.dart';
import 'package:inventory_management/widgets/vertical_side_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventory Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SafeArea(child: Main()),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    Widget buildMainContent({required int currentPage}){
      switch(currentPage){
        case 0: return MainContent();
        case 1: return Container();
        case 2: return Container();
        case 3: return Container();
        case 4: return Container();
        default: return const MainContent();
      }
    }
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(children: [
          AppHeader(),
          Expanded(child: Row(
            children: [
              VerticalSideNavigationMenu(
                onTap: (int index){
                  print(index);
                  setState(() {
                    currentIndex = index;
                  });
                },
                currentIndex: currentIndex,
                menuItems: [
                  NavBarMenuItem(icon: CupertinoIcons.home),
                  NavBarMenuItem(icon: Icons.shopping_cart),
                  NavBarMenuItem(icon: CupertinoIcons.tag_solid),
                  NavBarMenuItem(icon: CupertinoIcons.group_solid),
                  NavBarMenuItem(icon: Icons.store),
                ],
                iconSize: 17,
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: defaultSpace * 2, top: defaultSpace * 2),
                        child: Text(
                          "Products",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: Colors.black),),
                      ),
                      Expanded(child: buildMainContent(currentPage: currentIndex))
                    ],
                  )
              )
            ],
          ))
        ],),
      ),
    );
  }
}


