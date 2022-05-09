import 'package:flutter/material.dart';
import 'package:food_recipes/components/components.dart';
import 'package:food_recipes/models/meal_model.dart';
import 'package:food_recipes/modules/categories_screen.dart';
import 'package:food_recipes/modules/favorites_screen.dart';
import 'package:food_recipes/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  final List<MealModel> favorites;

  HomeScreen(this.favorites);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>>? pages;
  int selectedPage = 0;

  @override
  void initState() {
    pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Цэс',
      },
      {'page': FavoritesScreen(widget.favorites), 'title': 'Your favorites'}
    ];
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: firstColor,
            title: Text('Хоолны жор',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 20, color: Colors.white)),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.food_bank_sharp,
                  color: thirdColor,
                ),
                text: 'Хоол',
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: thirdColor,
                ),
                text: 'Таалагдсан',
              )
            ]),
          ),
          drawer: MyDrawer(),
          body: TabBarView(children: [
            CategoriesScreen(),
            FavoritesScreen(widget.favorites)
          ]),
        ));
  }
}
