import 'package:flutter/material.dart';
import 'package:recette/model/menuPays.dart';

class MenuPaysProvider with ChangeNotifier{
List <MenuPays> _menu= [

MenuPays(icon: Icons.free_breakfast_outlined, pays: 'Thai'),
MenuPays(icon: Icons.local_pizza_outlined, pays: 'Italian'),
MenuPays(icon: Icons.food_bank_outlined, pays: 'American'),
MenuPays(icon: Icons.table_chart_outlined, pays: 'Japan'),
MenuPays(icon: Icons.table_rows_outlined, pays: 'China'),
MenuPays(icon: Icons.bike_scooter_outlined, pays: 'African'),
];

List <MenuPays> get menu =>[..._menu];

}