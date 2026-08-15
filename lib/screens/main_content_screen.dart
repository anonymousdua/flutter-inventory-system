import 'package:flutter/material.dart';
import 'package:inventory_management/data/models/product_model.dart';

class MainContent extends StatefulWidget {
   const MainContent({super.key});
 
   @override
   State<MainContent> createState() => _MainContentState();
 }
 
 class _MainContentState extends State<MainContent> {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Center(
         child: Text("Product List"),
       ),
     );
   }

   friendlyStatus(ProductStatus status){
     switch(status){
       case ProductStatus.outOfStock:
         return "Out of Stock";
       case ProductStatus.active:
         return "Active";
     }
   }
 }
 