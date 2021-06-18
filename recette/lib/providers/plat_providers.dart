import 'package:flutter/material.dart';
import 'package:recette/model/plat.dart';

class PlatProviders with ChangeNotifier{

List <Plat> _plats = [

Plat(
  id: 1,
  price: 3000,
  name: 'pizza',
  image: 'image/asset/pizza.jpeg'

),

Plat(
  id: 2,
  price: 3000,
  name: 'tacos',
  image: 'image/asset/tacos.jpep'

),
Plat(
  id: 3,
  price: 3000,
  name: 'Garba',
  image:'image/asset/garba.jpeg' 

),
Plat(
  id: 4,
  price: 2000,
  name: 'aloco au poulet',
  image: 'image/asset/allocoAuPoisson.png'

),
Plat(
  id: 5,
  price: 1000,
  name: 'image/asset/akassa.jpeg',
  image: ''

),
Plat(
  id: 6,
  price: 3000,
  name: 'riz sauce graine',
  image: 'image/asset/rizsaucegraine.jpeg'

),


];

List<Plat> get plats=> [..._plats];

}