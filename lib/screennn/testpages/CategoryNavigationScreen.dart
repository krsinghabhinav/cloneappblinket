import 'package:flutter/material.dart';

class CategoryNavigationScreen extends StatefulWidget {
  final List<String> categories;
  final Map<String, List<String>> itemsByCategory;
  final Map<String, List<String>> imageByCategory;

  const CategoryNavigationScreen({
    Key? key,
    required this.categories,
    required this.itemsByCategory,
    required this.imageByCategory,
  }) : super(key: key);

  @override
  State<CategoryNavigationScreen> createState() =>
      _CategoryNavigationScreenState();
}

class _CategoryNavigationScreenState extends State<CategoryNavigationScreen> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    // Debug: Print incoming data
    print("Categories: ${widget.categories}");
    print("Items: ${widget.itemsByCategory}");
    print("Items: ${widget.imageByCategory}");
  }

  @override
  Widget build(BuildContext context) {
    // Get selected category and its items
    String selectedCategory = widget.categories[selectedIndex];
    List<String> selectedItems = widget.itemsByCategory[selectedCategory] ?? [];
    List<String> imageByCategors =
        widget.imageByCategory[selectedCategory] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(selectedCategory)),
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
            destinations:
                widget.categories
                    .map(
                      (category) => NavigationRailDestination(
                        icon: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Image.asset(
                              widget.imageByCategory[category]?.first ?? '',
                              width: 60,
                              height: 60,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.image,
                                  size: 40,
                                  color: Colors.grey.shade400,
                                );
                              },
                            ),
                          ),
                        ),

                        label: Text(category),
                      ),
                    )
                    .toList(),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // padding: const EdgeInsets.all(16),
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            imageByCategors[index],
                            width: 60,
                            height: 60,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(
                                Icons.image,
                                size: 40,
                                color: Colors.grey.shade400,
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        selectedItems[index].split('.').first,
                        style: const TextStyle(fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
                // return Card(
                //   margin: const EdgeInsets.symmetric(vertical: 8),
                //   child: ListTile(
                //     title: Text(
                //       selectedItems[index],
                //       style: const TextStyle(fontSize: 18),
                //     ),
                //     leading: const Icon(Icons.shopping_bag),
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
