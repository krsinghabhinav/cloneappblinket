import 'package:flutter/material.dart';

import '../../customeWidgets/SliverAppBarDelegate.dart';
import '../../customeWidgets/buildAppBar.dart';
import '../../customeWidgets/buildOffersSection.dart';
import '../../customeWidgets/buildSearchBar.dart';
import '../widgets/carditemadd.dart';

class OrderAgainPage extends StatelessWidget {
  const OrderAgainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Buildappbar()),
            //  / Search Bar (Sticky)
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverAppBarDelegate(
                minHeight: 60,
                maxHeight: 60,
                child: Container(
                  color: const Color.fromARGB(255, 138, 247, 151),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: Buildsearchbar(),
                ),
              ),
            ),
            SliverToBoxAdapter(child: Buildofferssection()),

            // This now shows a GridView (inside a SliverToBoxAdapter)
            SliverToBoxAdapter(child: CardGridContent()),
          ],
        ),
      ),
    );
  }
}
