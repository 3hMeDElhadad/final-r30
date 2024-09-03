import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/features/entrypoint/pages/menu/presentation/widgets/category_tile.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            'Choose a category',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          const CateogoriesGrid()
        ],
      ),
    );
  }
}

class CateogoriesGrid extends StatelessWidget {
  const CateogoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CategoryTile(
            imageLink: 'assets/images/category/cat1.png',
            label: 'Vegetables',
            backgroundColor: CoreThemeColor.primary,
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat2.png',
            label: 'Meat And Fish',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat3.png',
            label: 'Medicine',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat4.png',
            label: 'Baby Care',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat5.png',
            label: 'Office Supplies',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat6.png',
            label: 'Beauty',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat7.png',
            label: 'Gym Equipment',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat8.png',
            label: 'Gardening Tools',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat9.png',
            label: 'Pet Care',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat10.png',
            label: 'Eye Wears',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat11.png',
            label: 'Pack',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
          CategoryTile(
            imageLink: 'assets/images/category/cat12.png',
            label: 'Others',
            onTap: () {
              Navigator.pushNamed(context, RoutesName.categoryDetails);
            },
          ),
        ],
      ),
    );
  }
}