import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recette/providers/menupays_Provider.dart';
import 'package:recette/providers/plat_providers.dart';
import 'package:recette/screen/page2.dart';
import 'package:recette/screen/recette_screen.dart';

void main(List<String> args) {
  runApp(MyRecipeApp());
}

class MyRecipeApp extends StatelessWidget {
  // var produitPlat= Provider.of<PlatProviders>(context).Plats;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PlatProviders(),
        ),
        ChangeNotifierProvider(
          create: (_) =>  MenuPaysProvider(),)
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Recette(),
          '/details-plat': (context) => DetailDuPlat()
        },
      ),
    );
  }
}
