import 'package:flutter/material.dart';

enum  Unite{
  g,kg,l,ml,mg
}

class Recette{

 final int id;
 final String titre;
 final double etoile;
 final Color couleur;
 final String image;
 final List category;
 final String dure;
final  Unite unite;
 final String kiloCalorie;
 final List ingredient;

  Recette({this.id, this.titre, this.etoile, this.couleur, this.image, this.category, this.dure, this.kiloCalorie, this.ingredient,this.unite});  
}


class Ingredient{
  final  int id;
  final String titre;
  final String image;
  final Unite unite;
  Ingredient({this.id, this.titre, this.image, this.unite});
  
}


