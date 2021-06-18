import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recette/providers/menupays_Provider.dart';

class Recette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menu = Provider.of<MenuPaysProvider>(context).menu;
    return Scaffold(
       
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal[900],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favoris',
            ),
          ],
        ),
        body: Column(children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                color: Colors.white),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 30, left: 10, bottom: 10),
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( top: 20),
                        child: Text(
                          'Search',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ),
                      Text('for recipes',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: [
                      Container(
                        height: 25,
                        width: 230,
                        padding: EdgeInsets.only(top: 15, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300],
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10, top: 5),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(Icons.search, size: 35,color: Colors.grey,),
                            ),
                            hintText: 'dish name',
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                       Container(
                        height: 25,
                        width: 230,
                        padding: EdgeInsets.only(top: 10, bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFFD6474),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10, top: 5),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Icon(Icons.camera_alt_outlined, size: 35,color: Colors.white,),
                            ),
                            
                          ),
                        ),
                      )
                   ],
                 )
                ),
               
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: menu.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width: 50,
                                  child: Column(
                                    children: [
                                      Icon(
                                        menu[index].icon,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        menu[index].pays,
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                ),

                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.topLeft,
                  child: Text('Trending',style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 22
                  ),),
                ),
               
                Container(
                  margin: EdgeInsets.only(bottom:40),
                  height: 300,
                 
                  child:  ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    InkWell(
                      onTap:(){
                        
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.orangeAccent),
                        width: 190,
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 80),
                                width: 120,
                                child: Image(
                                    image: NetworkImage(
                                        'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795')
                                        )
                                        ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                children: [
                                  Container(
                                      alignment: Alignment.center,
                                      child:
                                          Text('Royal Paddington \n Thai Salad', style: TextStyle(
                                            fontFamily: 'Kurale'))),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 50),
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [Icon((Icons.stars)), Text('5.0')],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width:20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurple[100]),
                      width: 190,
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 80),
                              width: 120,
                              child: Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795'))),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Royal Paddington \n Thai Salad',
                                      style: TextStyle(
                                          fontFamily: 'Kurale'),
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Icon((Icons.stars)), Text('5.0')],
                            ),
                          )
                        ],
                      ),
                    ),
                     SizedBox(width:20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orangeAccent),
                      width: 190,
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 80),
                              width: 120,
                              child: Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795'))),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child:
                                        Text('Royal Paddington \n Thai Salad',style: TextStyle(fontFamily: 'kurale'))),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Icon((Icons.stars)), Text('5.0')],
                            ),
                          )
                        ],
                      ),
                    ),
                     SizedBox(width:20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orangeAccent),
                      width: 190,
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 80),
                              width: 120,
                              child: Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795'))),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child:
                                        Text('Royal Paddington \n Thai Salad',style: TextStyle(fontFamily: 'kurale'))),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Icon((Icons.stars)), Text('5.0')],
                            ),
                          )
                        ],
                      ),
                    ),
                     SizedBox(width:20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orangeAccent),
                      width: 190,
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 80),
                              width: 120,
                              child: Image(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795'))),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child:
                                        Text('Royal Paddington \n Thai Salad',style: TextStyle(fontFamily: 'kurale'))),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [Icon((Icons.stars)), Text('5.0')],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                )
              ],
            ),
          ),
          SizedBox(height: 40,),

          Expanded(
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.teal[900],
                  ),
                  
                  
                  
                  )
                  )
        ]));
  }
}
