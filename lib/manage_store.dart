// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:week6_1/additional_info.dart';
import 'package:week6_1/catalogue.dart';
import 'package:week6_1/dukaan_premium.dart';
import 'package:week6_1/order_details.dart';
import 'package:week6_1/payments.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('Manage Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return AddInfo();
                        }));
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.orange[700],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/marketing.png',
                                    color: Colors.white,
                                  )),
                              Text(
                                'Marketing Designs',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Payments();
                        }));
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.green[300],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/rupees-icon-2.jpg',
                                    color: Colors.white,
                                  )),
                              Text(
                                'Online Payments',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Premium("https://youtu.be/aOzcP201wKY");
                        }));
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 114, 236, 149),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/discount_icon.png',
                                    color: Colors.white,
                                  )),
                              Text(
                                'Discount Coupons',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return OrderDetails();
                        }));
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 180, 153, 153),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/group.png',
                                    color: Colors.white,
                                  )),
                              Text(
                                'My Customers',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Catalogue();
                        }));
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[600],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/scan-59.png',
                                    color: Colors.white,
                                  )),
                              Text(
                                'Store QR Code',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        print('ontapped1');
                      },
                      child: Container(
                        width: 170,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/money-png-icon-5.jpg',
                                    color: Colors.white,
                                  )),
                              Text(
                                'Extra Charges',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    print('ontapped1');
                  },
                  child: Container(
                    width: 170,
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 45,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    'icons/lines.png',
                                    color: Colors.white,
                                  )),
                              Container(
                                width: 45,
                                height: 18,
                                alignment: Alignment.center,
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.red[400],
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            ],
                          ),
                          Text(
                            'Order Form',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          selectedFontSize: 16,
          selectedIconTheme: IconThemeData(size: 30),
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.grey[400],
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.request_page_outlined), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(Icons.layers_rounded), label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Account'),
          ]),
    );
  }
}
