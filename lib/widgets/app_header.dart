import 'package:flutter/material.dart';
import 'package:inventory_management/utils/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      padding: const EdgeInsets.all(defaultSpace / 2),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black12, width: .7))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultSpace),
              child: Row(
                children: const [
                  Text(
                      "PHIX",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w900
                      ),
                  ),
                  Text(
                    "LAB",
                    style: TextStyle(color: primaryColor, fontSize: 16),
                  )
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultSpace),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: iconBackdropColor
                    ),
                    child: const Icon(
                      Icons.notifications,
                      size: 17,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: defaultSpace,),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor
                    ),
                    child: const Center(child: const Text("PL", style: TextStyle(color: Colors.white, fontSize: 12, ),))
                  ),
                ],
              ),
          )
        ],
      ),
    );
  }
}
