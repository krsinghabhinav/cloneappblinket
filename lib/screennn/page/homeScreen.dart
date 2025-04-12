import 'package:cloneappblinket/screennn/ProfileScreen/screen/ProfileScreen.dart';
import 'package:cloneappblinket/screennn/testpages/CategoryNavigationScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedCategoryIndex = 0;
  final List<Map<String, dynamic>> _categories = [
    {'name': 'All', 'icon': Icons.grid_view_rounded},
    {'name': 'Summer', 'icon': Icons.wb_sunny_outlined},
    {'name': 'Electronics', 'icon': Icons.headphones_outlined},
    {'name': 'Beauty', 'icon': Icons.face_outlined},
    {'name': 'Kids', 'icon': Icons.child_care_outlined},
  ];

  final List<Map<String, dynamic>> _bestsellers = [
    {
      'title': 'Dairy, Bread & Eggs',
      'items': ['milk.png', 'bread.png', 'eggs.png', 'cheese.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+98 more',
      'category': 'All',
    },
    {
      'title': 'Vegetables & Fruits',
      'items': ['tomato.png', 'apple.png', 'onion.png', 'spinach.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+98 more',
      'category': 'All',
    },
    {
      'title': 'Oil, Ghee & Masala',
      'items': ['oil.png', 'ghee.png', 'masala1.png', 'masala2.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+115 more',
      'category': 'All',
    },
    {
      'title': 'Summer Essentials',
      'items': ['sunscreen.png', 'hat.png', 'sunglasses.png', 'fan.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+45 more',
      'category': 'Summer',
    },
    {
      'title': 'Summer Drinks',
      'items': ['lemonade.png', 'icetea.png', 'coconutwater.png', 'juice.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+32 more',
      'category': 'Summer',
    },
    {
      'title': 'Smartphones',
      'items': ['phone1.png', 'phone2.png', 'phone3.png', 'phone4.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+25 more',
      'category': 'Electronics',
    },
    {
      'title': 'Headphones & Speakers',
      'items': ['headphone.png', 'speaker.png', 'earbuds.png', 'neckband.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+30 more',
      'category': 'Electronics',
    },
    {
      'title': 'Skincare',
      'items': [
        'facewash.png',
        'moisturizer.png',
        'serum.png',
        'sunscreen.png',
      ],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+65 more',
      'category': 'Beauty',
    },
    {
      'title': 'Makeup',
      'items': [
        'lipstick.png',
        'foundation.png',
        'mascara.png',
        'eyeshadow.png',
      ],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+78 more',
      'category': 'Beauty',
    },
    {
      'title': 'Kids Clothing',
      'items': ['tshirt.png', 'shorts.png', 'dress.png', 'shoes.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+55 more',
      'category': 'Kids',
    },
    {
      'title': 'Kids Toys',
      'items': ['toy1.png', 'toy2.png', 'toy3.png', 'toy4.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],

      'more': '+40 more',
      'category': 'Kids',
    },
  ];

  // final List<Map<String, dynamic>> _bestsellers = [
  //   {
  //     'title': 'Dairy, Bread & Eggs',
  //     'category': 'All',
  //     'items': [
  //       {
  //         'name': 'Milk',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['milk.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Milk', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Bread',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['bread.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Bread', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Eggs',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['eggs.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Eggs', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Cheese',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['cheese.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Cheese', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Vegetables & Fruits',
  //     'category': 'All',
  //     'items': [
  //       {
  //         'name': 'Tomato',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['tomato.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Tomato', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Apple',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['apple.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Apple', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Onion',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['onion.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Onion', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Spinach',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['spinach.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Spinach', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Oil, Ghee & Masala',
  //     'category': 'All',
  //     'items': [
  //       {
  //         'name': 'Oil',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['oil.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Oil', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Ghee',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['ghee.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Ghee', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Masala 1',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['masala1.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Masala 1', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Masala 2',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['masala2.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Masala 2', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Summer Essentials',
  //     'category': 'Summer',
  //     'items': [
  //       {
  //         'name': 'Sunscreen',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['sunscreen.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Sunscreen', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Hat',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['hat.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Hat', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Sunglasses',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['sunglasses.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Sunglasses', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Fan',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['fan.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Fan', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Summer Drinks',
  //     'category': 'Summer',
  //     'items': [
  //       {
  //         'name': 'Lemon Juice',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['lemonjuice.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Lemon Juice', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Coconut Water',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['coconutwater.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Coconut Water', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Buttermilk',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['buttermilk.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Buttermilk', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Aam Panna',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['aampanna.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Aam Panna', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Smartphones',
  //     'category': 'Electronics',
  //     'items': [
  //       {
  //         'name': 'iPhone',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['iphone.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'iPhone', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Samsung',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['samsung.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Samsung', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'OnePlus',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['oneplus.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'OnePlus', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Pixel',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['pixel.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Pixel', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Skincare',
  //     'category': 'Beauty',
  //     'items': [
  //       {
  //         'name': 'Moisturizer',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['moisturizer.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Moisturizer', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Face Wash',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['facewash.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Face Wash', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Sunscreen',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['skincare_sunscreen.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Sunscreen', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Serum',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['serum.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Serum', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Makeup',
  //     'category': 'Beauty',
  //     'items': [
  //       {
  //         'name': 'Foundation',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['foundation.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Foundation', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Lipstick',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['lipstick.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {'title': 'Lipstick', 'image': 'assets/uiImages/image 35.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Mascara',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['mascara.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Mascara', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Blush',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['blush.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Blush', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Kids Toys',
  //     'category': 'Toys',
  //     'items': [
  //       {
  //         'name': 'Teddy Bear',
  //         'image': 'assets/uiImages/c4.png',
  //         'items': ['teddybear.png'],
  //         'images': ['assets/uiImages/c4.png'],
  //         'subItems': [
  //           {'title': 'Teddy Bear', 'image': 'assets/uiImages/c4.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Building Blocks',
  //         'image': 'assets/uiImages/image 35.png',
  //         'items': ['buildingblocks.png'],
  //         'images': ['assets/uiImages/image 35.png'],
  //         'subItems': [
  //           {
  //             'title': 'Building Blocks',
  //             'image': 'assets/uiImages/image 35.png',
  //           },
  //         ],
  //       },
  //       {
  //         'name': 'Car Toy',
  //         'image': 'assets/uiImages/image 23.png',
  //         'items': ['cartoy.png'],
  //         'images': ['assets/uiImages/image 23.png'],
  //         'subItems': [
  //           {'title': 'Car Toy', 'image': 'assets/uiImages/image 23.png'},
  //         ],
  //       },
  //       {
  //         'name': 'Puzzle',
  //         'image': 'assets/uiImages/image 36.png',
  //         'items': ['puzzle.png'],
  //         'images': ['assets/uiImages/image 36.png'],
  //         'subItems': [
  //           {'title': 'Puzzle', 'image': 'assets/uiImages/image 36.png'},
  //         ],
  //       },
  //     ],
  //   },
  // ];

  // Welcome section data for each category
  final Map<String, Map<String, String>> _welcomeData = {
    'All': {
      'title': 'Welcome',
      'subtitle': 'Order now to avail exciting offers!',
    },
    'Summer': {
      'title': 'Summer Specials',
      'subtitle': 'Beat the heat with our summer collection!',
    },
    'Electronics': {
      'title': 'Tech Deals',
      'subtitle': 'Discover the latest gadgets and accessories!',
    },
    'Beauty': {
      'title': 'Beauty Essentials',
      'subtitle': 'Pamper yourself with premium beauty products!',
    },
    'Kids': {
      'title': 'Kids Corner',
      'subtitle': 'Everything your little ones need!',
    },
  };

  // Offers section data for each category
  final Map<String, List<Map<String, dynamic>>> _offersData = {
    'All': [
      {
        'icon': Icons.currency_rupee,
        'title': 'Flat ₹50 OFF',
        'subtitle': 'on your first order',
        'footer': 'above ₹299',
        'color': Color.fromARGB(255, 14, 14, 14),
      },
      {
        'icon': Icons.delivery_dining,
        'title': 'Free Delivery',
        'subtitle': 'on first 10 orders',
        'color': Color.fromARGB(255, 14, 15, 14),
      },
    ],
    'Summer': [
      {
        'icon': Icons.ac_unit,
        'title': 'Flat 20% OFF',
        'subtitle': 'on summer drinks',
        'footer': 'above ₹199',
        'color': Color(0xFF2196F3),
      },
      {
        'icon': Icons.wb_sunny_outlined,
        'title': 'Summer Bundle',
        'subtitle': 'get 3 items at price of 2',
        'color': Color(0xFF2196F3),
      },
    ],
    'Electronics': [
      {
        'icon': Icons.headphones,
        'title': 'Upto 30% OFF',
        'subtitle': 'on premium headphones',
        'footer': 'limited time offer',
        'color': Color(0xFF9C27B0),
      },
      {
        'icon': Icons.phone_android,
        'title': 'Exchange Bonus',
        'subtitle': 'extra ₹2000 on old device',
        'color': Color(0xFF9C27B0),
      },
    ],
    'Beauty': [
      {
        'icon': Icons.face,
        'title': 'Buy 1 Get 1',
        'subtitle': 'on selected skincare',
        'footer': 'limited period',
        'color': Color(0xFFE91E63),
      },
      {
        'icon': Icons.spa,
        'title': 'Gift Hamper',
        'subtitle': 'on orders above ₹999',
        'color': Color(0xFFE91E63),
      },
    ],
    'Kids': [
      {
        'icon': Icons.child_care,
        'title': '40% OFF',
        'subtitle': 'on kids clothing',
        'footer': 'this weekend only',
        'color': Color(0xFFFF9800),
      },
      {
        'icon': Icons.toys,
        'title': 'Toy Festival',
        'subtitle': 'buy 2 get 1 free',
        'color': Color(0xFFFF9800),
      },
    ],
  };

  List<Map<String, dynamic>> get filteredBestsellers {
    final selectedCategory = _categories[_selectedCategoryIndex]['name'];
    if (selectedCategory == 'All') {
      return _bestsellers.where((item) => item['category'] == 'All').toList();
    } else {
      return _bestsellers
          .where((item) => item['category'] == selectedCategory)
          .toList();
    }
  }

  String get selectedCategoryName {
    return _categories[_selectedCategoryIndex]['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverToBoxAdapter(child: _buildAppBar()),

            // Search Bar (Sticky)
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                minHeight: 60,
                maxHeight: 60,
                child: Container(
                  color: const Color.fromARGB(255, 138, 247, 151),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: _buildSearchBar(),
                ),
              ),
            ),

            // Categories (Sticky)
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                minHeight: 70,
                maxHeight: 70,
                child: Container(
                  color: Colors.white,
                  child: _buildCategories(),
                ),
              ),
            ),

            // Welcome Section
            SliverToBoxAdapter(child: _buildWelcomeSection()),

            // Offers Section
            SliverToBoxAdapter(child: _buildOffersSection()),

            // Bestsellers Section
            SliverToBoxAdapter(child: _buildBestsellersSection()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color.fromARGB(255, 138, 247, 151),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Blinkit in',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '8 minutes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.info_outline, size: 12),
                            SizedBox(width: 2),
                            Text('Know more', style: TextStyle(fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Text(
                        'Vikas Khand, Gomti Nagar',
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.keyboard_arrow_down, size: 16),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the next screen
                  Get.to(ProfileScreen());
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Icon(Icons.search, color: Colors.grey.shade600),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search "${selectedCategoryName.toLowerCase()}"',
                hintStyle: TextStyle(color: Colors.grey.shade500),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.mic, color: Colors.grey.shade600),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 138, 247, 151),
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _categories.length,
          (index) => _buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(int index) {
    final bool isSelected = _selectedCategoryIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategoryIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              _categories[index]['icon'],
              color: isSelected ? Colors.white : Colors.black,
              size: 20,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _categories[index]['name'],
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    final category = selectedCategoryName;
    final welcomeInfo = _welcomeData[category]!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: const Color.fromARGB(255, 138, 247, 151),
      child: Column(
        children: [
          Text(
            welcomeInfo['title']!,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Serif',
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 4),
          Text(welcomeInfo['subtitle']!, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildOffersSection() {
    final category = selectedCategoryName;
    final offers = _offersData[category]!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      color: const Color.fromARGB(255, 138, 247, 151),
      child: Row(
        children: [
          Expanded(
            child: _buildOfferCard(
              icon: offers[0]['icon'],
              title: offers[0]['title'],
              subtitle: offers[0]['subtitle'],
              footer: offers[0]['footer'],
              color: offers[0]['color'],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(Icons.add, color: Colors.black54),
          ),
          Expanded(
            child: _buildOfferCard(
              icon: offers[1]['icon'],
              title: offers[1]['title'],
              subtitle: offers[1]['subtitle'],
              footer: offers[1]['footer'],
              color: offers[1]['color'],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferCard({
    required IconData icon,
    required String title,
    required String subtitle,
    String? footer,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: color,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 10, color: Colors.black87),
                ),
                if (footer != null)
                  Text(
                    footer,
                    style: const TextStyle(fontSize: 10, color: Colors.black54),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBestsellersSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Bestsellers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredBestsellers.length,
            itemBuilder: (context, index) {
              return _buildBestsellerCategory(filteredBestsellers[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBestsellerCategory(Map<String, dynamic> category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            category['title'],
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: category['items'].length + 1,
            itemBuilder: (context, index) {
              if (index == category['items'].length) {
                return _buildMoreItem(category['more']);
              }
              print("category['items'][index]${category['items'][index]}");
              print("  category['images'][index],${category['images'][index]}");
              print("   category['title'],,${category['title']}");
              print("  category['items'],,${category['items']}");
              return _buildProductItem(
                category['items'][index], //milk.png
                category['images'][index], //assets/uiImages/c4.png
                category['title'], // category title = Dairy, Bread & Eggs
                category['items'], //[milk.png, bread.png, eggs.png, cheese.png]
                category['images'], //[milk.png, bread.png, eggs.png, cheese.png]
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem(
    String itemName,
    String imagePath,
    String categoryTitle,
    List<String> categoryItems,
    List<String> categoryImages,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(
          CategoryNavigationScreen(
            categories: [categoryTitle], // only one category
            itemsByCategory: {categoryTitle: categoryItems},
            imageByCategory: {categoryTitle: categoryImages},
          ),
        );
      },
      child: Container(
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
                  imagePath,
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
              itemName.split('.').first,
              style: const TextStyle(fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildProductItem(String imageName, String images) {
  //   return GestureDetector(
  //     onTap: () {
  //       Get.to(CategoryNavigationScreen(

  //         categories: _categories,
  //         itemsByCategory: _bestsellers,
  //       ));
  //     },
  //     child: Container(
  //       width: 80,
  //       margin: const EdgeInsets.symmetric(horizontal: 4),
  //       child: Column(
  //         children: [
  //           Container(
  //             height: 80,
  //             width: 80,
  //             decoration: BoxDecoration(
  //               color: Colors.grey.shade100,
  //               borderRadius: BorderRadius.circular(8),
  //             ),
  //             child: Center(
  //               child: Image.asset(
  //                 images,
  //                 width: 60,
  //                 height: 60,
  //                 errorBuilder: (context, error, stackTrace) {
  //                   return Icon(
  //                     Icons.image,
  //                     size: 40,
  //                     color: Colors.grey.shade400,
  //                   );
  //                 },
  //               ),
  //             ),
  //           ),
  //           const SizedBox(height: 4),
  //           Text(
  //             imageName.split('.').first,
  //             style: const TextStyle(fontSize: 12),
  //             maxLines: 2,
  //             overflow: TextOverflow.ellipsis,
  //             textAlign: TextAlign.center,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildMoreItem(String text) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
