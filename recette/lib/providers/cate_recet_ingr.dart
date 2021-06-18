import 'package:flutter/material.dart';
import 'package:recette/model/category.dart';

import 'package:recette/model/recette.dart';

class CateRecetIngrntProvider with ChangeNotifier {
  List<Category> _categ = [
    Category(id: 1, titre: 'Cote Ivoire', icon: Icons.ac_unit),
    Category(id: 2, titre: 'france', icon: Icons.ac_unit),
    Category(id: 3, titre: 'Mali', icon: Icons.ac_unit),
  ];
  List<Category> get cate => [..._categ];

  List<Recette> _caterecet = [
    Recette(
        id: 1,
        titre: 'aloco',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [1, 3],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 2,
        titre: 'Pizza',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [1],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 3,
        titre: 'Tiéb-dien',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [2],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 4,
        titre: 'sauce graine',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [1, 2],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 5,
        titre: 'Tiéb-dien',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [3],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 6,
        titre: 'Tiéb-dien',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [2],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 7,
        titre: 'Tiéb-dien',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [1],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 8,
        titre: 'arrachide',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [2],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 9,
        titre: 'kabato',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [3],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g),
    Recette(
        id: 10,
        titre: 'attieke',
        etoile: 1.0,
        couleur: Colors.red,
        image: '',
        category: [2],
        dure: '2H',
        ingredient: [
          Ingredient(id: 1, titre: 'oignon', image: '', unite: Unite.kg),
          Ingredient(id: 2, titre: 'huile', image: '', unite: Unite.l),
          Ingredient(id: 3, titre: 'tomate', image: '', unite: Unite.g)
        ],
        unite: Unite.g)
  ];
  List<Recette> get caterecet => [..._caterecet];
}
