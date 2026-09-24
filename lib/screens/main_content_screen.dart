import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/data/models/product_model.dart';
import 'package:inventory_management/utils/constants.dart';
import 'package:inventory_management/widgets/bottom_widget.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(defaultSpace),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(defaultSpace / 2)),
              color: Colors.white,
              shape: BoxShape.rectangle,
            ),
            margin: const EdgeInsets.only(
              top: defaultSpace * 2,
              left: defaultSpace,
              right: defaultSpace * 2,
              bottom: defaultSpace * 3,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: defaultSpace * 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: backgroundColor.withValues(alpha: .4),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.grey.withValues(alpha: .4),
                              width: .7,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(defaultSpace / 2),
                                child: Icon(
                                  CupertinoIcons.search,
                                  color: Colors.grey.withValues(alpha: .8),
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  onChanged: (value) {},
                                  style: TextStyle(fontSize: 12),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    isCollapsed:
                                        true, // Removes the default 24px height padding
                                    contentPadding: EdgeInsets
                                        .zero, // Removes all internal padding
                                  ),
                                ),
                              ),
                              ButtonWidgetWithIcon(
                                icon: Icons.keyboard_arrow_down_outlined,
                                label: 'Filter',
                                onTap: () {
                                  print("Filter Clicked");
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: defaultSpace / 2),
                        Row(
                          children: [
                            ButtonWidgetWithIcon(
                              labelAndIconColor: primaryColor,
                              borderColor: primaryColor,
                              borderRadius: 4,
                              icon: Icons.keyboard_arrow_down_outlined,
                              label: 'Export',
                              onTap: () {
                                print("Export Clicked");
                              },
                            ),
                            const SizedBox(width: defaultSpace / 2),
                            Container(
                              width: 120,
                              height: 45,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "New Product",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Table(columnWidths: const {}),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow _buildProductHeader() {
    return TableRow(
      children: [
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(child: Container()),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(
          child: Padding(
            padding: EdgeInsets.all(defaultSpace / 2),
            child: Checkbox(value: false, onChanged: (value) {}),
          ),
        ),
        _buildProductItem(child: Container()),
      ],
    );
  }

  TableCell _buildProductItem({required Widget child}) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: SizedBox(height: 70, child: Center(child: child)),
    );
  }

  friendlyStatus(ProductStatus status) {
    switch (status) {
      case ProductStatus.outOfStock:
        return "Out of Stock";
      case ProductStatus.active:
        return "Active";
    }
  }
}
