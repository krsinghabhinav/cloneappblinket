import 'package:flutter/material.dart';

class CategoryNavigationScreen extends StatefulWidget {
  const CategoryNavigationScreen({super.key});
  @override
  State<CategoryNavigationScreen> createState() =>
      _CategoryNavigationScreenState();
}

class _CategoryNavigationScreenState extends State<CategoryNavigationScreen> {
  int selectedIndex = 0;

  final List<String> categories = [
    "Appliances",
    "Mobile",
    "Electronics",
    "Home",
    "Furniture",
    "Personal Care",
    "Toys & Baby"
  ];

  final Map<String, List<String>> itemsByCategory = {
    "Appliances": ["Washing Machine", "Refrigerator", "Microwave"],
    "Mobile": ["iPhone 15", "Samsung Galaxy", "OnePlus Nord"],
    "Electronics": ["TV", "Laptop", "Headphones"],
    "Home": ["Curtains", "Wall Clock", "Decor Lights"],
    "Furniture": ["Sofa", "Bed", "Dining Table"],
    "Personal Care": ["Trimmer", "Hair Dryer", "Electric Toothbrush"],
    "Toys & Baby": ["Teddy Bear", "Baby Stroller", "Lego Set"],
  };

  @override
  Widget build(BuildContext context) {
    String selectedCategory = categories[selectedIndex];
    List<String> selectedItems = itemsByCategory[selectedCategory] ?? [];

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: categories
                .map((category) => NavigationRailDestination(
                      icon: const Icon(Icons.category),
                      selectedIcon: const Icon(Icons.check_circle),
                      label: Text(category),
                    ))
                .toList(),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(
                      selectedItems[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                    leading: const Icon(Icons.shopping_bag),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
