import 'package:flutter/material.dart';
import 'package:recette/providers/plat_providers.dart';

class DetailDuPlat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Pizza',
                              style: TextStyle(fontSize: 20,fontFamily: "kurale",
                            ))
                          ]),
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.favorite))
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.white))),
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Card(
                        
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30)),
                          child: Image(
                            image: NetworkImage(
                                'https://media.istockphoto.com/photos/pizza-with-chicken-and-mushrooms-picture-id1218097795'),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.time_to_leave,
                                color: Colors.grey,
                              ),
                              Text('45 min',style: TextStyle(
                                          fontFamily: 'Kurale'))
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.star_border,
                                color: Colors.orange,
                              ),
                              Text('8,5 rate',style: TextStyle(
                                          fontFamily: 'Kurale'))
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.fireplace,
                                color: Colors.grey,
                              ),
                              Text('215kcal',style: TextStyle(
                                          fontFamily: 'Kurale'))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Igrédients',
                            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'kurale'),
                          ))
                    ],
                  ),
                )),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
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
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.sports_basketball),
                        SizedBox(),
                        Text(
                          'Buy',
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'kurale'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
