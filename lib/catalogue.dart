import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Catalogue({Key? key}) : super(key: key);

  final cardslist = [
    ['products/pro3.jpg', 'Couch Potato | Women...', '₹799'],
    ['products/pro5.jpg', 'Couch Potato | Men | Bl...', '₹799'],
    ['products/pro4.jpg', 'Mug | Explore', '₹399'],
    ['products/pro2.jpg', 'Combo Blahst 1 | Pack ....', '₹699'],
    ['products/pro1.jpg', 'Mug | Orchard', '₹449'],
    ['products/pro8.jpg', 'Combo Blahst 2 | Explo...', '₹599'],
    ['products/pro7.jpg', 'I See Combo Pack', '₹1,299'],
    ['products/pro6.jpg', 'Kids Combo Blahst', '₹1,199'],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 236, 236),
          appBar: AppBar(
            toolbarHeight: 65,
            backgroundColor: Colors.blue[900],
            automaticallyImplyLeading: false,
            title: Text('Catalogue'),
            centerTitle: true,
            actions: [
              Icon(
                Icons.search_rounded,
                size: 30,
              ),
              SizedBox(
                width: 15,
              )
            ],
            bottom:
                TabBar(indicatorColor: Colors.white, indicatorWeight: 3, tabs: [
              Tab(
                height: 50,
                text: "Products",
              ),
              Tab(
                text: "Catalogue",
              )
            ]),
          ),
          body: ListView.builder(
              itemCount: cardslist.length,
              itemBuilder: (context, index) {
                return ProductCards(
                    proicon: cardslist[index][0],
                    proname: cardslist[index][1],
                    proprice: cardslist[index][2]);
              })),
    );
  }
}

class ProductCards extends StatelessWidget {
  final proicon;
  final proname;
  final proprice;

  ProductCards(
      {required this.proicon, required this.proname, required this.proprice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 15, right: 9.5),
      child: Container(
        height: 175,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                proicon,
                                height: 100,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                proname,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '1 Piece',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                proprice,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'In stock',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey[600],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Switch(value: true, onChanged: (value) {})
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  endIndent: 8,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Share Product',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
