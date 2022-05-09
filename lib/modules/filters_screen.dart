import 'package:flutter/material.dart';
import 'package:food_recipes/components/components.dart';
import 'package:food_recipes/models/category_model.dart';
import 'package:food_recipes/widgets/category_item.dart';
import 'package:food_recipes/widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool glutenFree = false;
  bool vegetrian = false;
  bool vegan = false;
  bool isLactoseFree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Тохиргоо',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        backgroundColor: firstColor,
        elevation: 0.0,
      ),
      drawer: const MyDrawer(),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [firstColor, secondColor, thirdColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Text(
                    'Өөртөө тааруулан тохиргоогоо хийнэ үү',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      SwitchListTile(
                        value: glutenFree,
                        onChanged: (newValue) {
                          setState(() {
                            glutenFree = newValue;
                          });
                        },
                        title: Text(
                          'Цавуулаггүй',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Цавуулаггүй хоол хүнс',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: vegetrian,
                        onChanged: (newValue) {
                          setState(() {
                            vegetrian = newValue;
                          });
                        },
                        title: Text(
                          'Амьтны гаралтай бүтээгдэхүүн ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Амьтны гаралтай бүтээгдэхүүн ороогүй хоол хүнс',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: vegan,
                        onChanged: (newValue) {
                          setState(() {
                            vegan = newValue;
                          });
                        },
                        title: Text(
                          'Махгүй',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Мах ороогүй хоол хүнс',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                      SwitchListTile(
                        value: isLactoseFree,
                        onChanged: (newValue) {
                          setState(() {
                            isLactoseFree = newValue;
                          });
                        },
                        title: Text(
                          'Сахаргүй',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        subtitle: Text(
                          'Сахар ороогүй хоол хүнс',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
