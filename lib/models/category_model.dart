// ignore_for_file: unnecessary_const

class CategoryModel {
  final String id;
  final String name;
  final String image;

  const CategoryModel(
      {required this.id, required this.name, required this.image});
}

const mainRecipes = const [
  CategoryModel(
      id: 'A1',
      name: 'Өглөөний цай',
      image: 'https://images.app.goo.gl/aYNUEqGd3FHoBD3S9'),
  CategoryModel(
      id: 'A2',
      name: 'Хуурга',
      image:
          'https://image.freepik.com/free-photo/delicious-vietnamese-food-including-pho-ga-noodles-spring-rolls-white-table_181624-34062.jpg'),
  CategoryModel(
      id: 'A3',
      name: 'Шөлтэй хоол',
      image:
          'https://image.freepik.com/free-photo/penne-pasta-with-meatballs-tomato-sauce-white-bowl_2829-7663.jpg'),
  //CategoryModel(id: 'A4', name: 'Sweets', image: 'https://image.freepik.com/free-photo/eastern-sweets_2829-13987.jpg'),
];
// ignore: constant_identifier_names
const recipesForYou = const [
  CategoryModel(
      id: 'A5',
      name: 'Түргэн хоол ',
      image:
          'https://image.freepik.com/free-photo/crispy-french-fries-with-ketchup-mayonnaise_1150-26586.jpg'),
  CategoryModel(
      id: 'A6',
      name: 'Нарийн боов',
      image: 'https://images.app.goo.gl/VEx1p9r2GguwSZZj9'),
  CategoryModel(
      id: 'A7',
      name: 'Амттан',
      image:
          'https://image.freepik.com/free-photo/salad-from-tomatoes-cucumber-red-onions-lettuce-leaves-healthy-summer-vitamin-menu-vegan-vegetable-food-vegetarian-dinner-table-top-view-flat-lay_2829-6482.jpg'),
];
const hotRecipes = const [
  CategoryModel(
      id: 'A8',
      name: 'Уух зүйлс',
      image:
          'https://image.freepik.com/free-photo/morning-with-turkish-coffee-brewing_1157-8840.jpg'),
  CategoryModel(
      id: 'A9',
      name: 'Кето хоол',
      image:
          'https://image.freepik.com/free-photo/colorful-fruit-smoothies-composition-wooden-background_23-2148227532.jpg'),
  CategoryModel(
      id: 'A10',
      name: 'Салад',
      image:
          'https://image.freepik.com/free-photo/top-view-different-vegetables-with-fruits-white-background-food-diet-health-ripe-color-salad_140725-98420.jpg'),
];
