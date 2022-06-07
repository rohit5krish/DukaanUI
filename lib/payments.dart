// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  bool _isPressedO = false;
  bool _isPressedP = true;
  bool _isPressedR = false;

  final payouts = [
    [
      'products/pro1.jpg',
      'Order #1688068',
      'Jul 12, 02:06 PM',
      '₹799',
      'Successful',
      '₹799 deposited to: 58860200000138'
    ],
    [
      'products/pro2.jpg',
      'Order #1457741',
      'Apr 26, 07:47 AM',
      '₹397.4',
      'Successful',
      '₹397.4 deposited to: 58860200000138'
    ],
    [
      'products/pro3.jpg',
      'Order #1408896',
      'Apr 11, 10:47 AM',
      '₹686.42',
      'Successful',
      '₹686.42 deposited to: 58860200000138'
    ],
    [
      'products/pro4.jpg',
      'Order #1175275',
      'Dec 26, 03:52 PM',
      '₹542.85',
      'Successful',
      '₹542.85 deposited to: 58860200000138'
    ],
    [
      'products/pro5.jpg',
      'Order #1674235',
      'Sep 05, 05:47 PM',
      '₹357.50',
      'Successful',
      '₹357.50 deposited to: 58860200000138'
    ],
    [
      'products/pro6.jpg',
      'Order #1488453',
      'Feb 15, 11:47 AM',
      '₹550',
      'Successful',
      '₹550 deposited to: 58860200000138'
    ],
    [
      'products/pro7.jpg',
      'Order #1670302',
      'Apr 26, 07:47 AM',
      '₹237.50',
      'Successful',
      '₹237.50 deposited to: 58860200000138'
    ],
    [
      'products/pro8.jpg',
      'Order #1670846',
      'Mar 26, 09:35 AM',
      '₹1500',
      'Successful',
      '₹1500 deposited to: 58860200000138'
    ],
    [
      'products/pro1.jpg',
      'Order #1688068',
      'Jul 12, 02:06 PM',
      '₹499',
      'Successful',
      '₹499 deposited to: 58860200000138'
    ],
    [
      'products/pro3.jpg',
      'Order #1457741',
      'Apr 26, 07:47 AM',
      '₹352.4',
      'Successful',
      '₹352.4 deposited to: 58860200000138'
    ],
    [
      'products/pro2.jpg',
      'Order #1408896',
      'Apr 11, 10:47 AM',
      '₹600.42',
      'Successful',
      '₹600.42 deposited to: 58860200000138'
    ],
    [
      'products/pro8.jpg',
      'Order #1175275',
      'Dec 26, 03:52 PM',
      '₹542.85',
      'Successful',
      '₹542.85 deposited to: 58860200000138'
    ],
    [
      'products/pro6.jpg',
      'Order #1674235',
      'Sep 05, 05:47 PM',
      '₹375.50',
      'Successful',
      '₹357.50 deposited to: 58860200000138'
    ],
    [
      'products/pro4.jpg',
      'Order #1488453',
      'Feb 15, 11:47 AM',
      '₹580',
      'Successful',
      '₹580 deposited to: 58860200000138'
    ],
    [
      'products/pro5.jpg',
      'Order #1670302',
      'Apr 26, 07:47 AM',
      '₹380.50',
      'Successful',
      '₹380.50 deposited to: 58860200000138'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.blue[900],
        title: Text('Payments'),
        actions: [
          Icon(
            Icons.info_outline,
            size: 27,
          ),
          SizedBox(
            width: 14,
          )
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            height: 225,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color.fromARGB(255, 216, 207, 207)),
                  borderRadius: BorderRadius.circular(5)),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Transaction Limit',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'A free limit up to which you will receive the online payments directly in your bank',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    LinearPercentIndicator(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      percent: 0.3,
                      lineHeight: 7,
                      progressColor: Colors.blue[800],
                      barRadius: Radius.circular(5),
                    ),
                    SizedBox(height: 7),
                    Text(
                      '36,668 left out of ₹50,000',
                      style: TextStyle(color: Colors.grey[500], fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.blue[800]),
                        onPressed: () {},
                        child: Text(
                          'Increase limit',
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Default Method',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      'Online Payments',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Profile',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      'Bank Account',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 50,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payments Overview',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      'Life Time',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange[700]),
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AMOUNT ON HOLD\n',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        '₹0',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  )),
              SizedBox(
                width: 5,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green[500]),
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AMOUNT RECEIVED\n',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        '₹13,332',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Transactions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            _isPressedO
                                ? Colors.blue[900]
                                : Color.fromARGB(255, 230, 223, 223))),
                    onPressed: () {
                      setState(() {
                        _isPressedO = true;
                        _isPressedP = false;
                        _isPressedR = false;
                      });
                    },
                    child: Text(
                      'On hold',
                      style: TextStyle(color: Colors.grey[600], fontSize: 17),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            _isPressedP
                                ? Colors.blue[900]
                                : Color.fromARGB(255, 230, 223, 223))),
                    onPressed: () {
                      setState(() {
                        _isPressedO = false;
                        _isPressedP = true;
                        _isPressedR = false;
                      });
                    },
                    child: Text(
                      'Payouts(15)',
                      style: TextStyle(fontSize: 17),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0))),
                        backgroundColor: MaterialStateProperty.all<Color?>(
                            _isPressedR
                                ? Colors.blue[900]
                                : Color.fromARGB(255, 230, 223, 223))),
                    onPressed: () {
                      setState(() {
                        _isPressedO = false;
                        _isPressedP = false;
                        _isPressedR = true;
                      });
                    },
                    child: Text(
                      'Refunds',
                      style: TextStyle(color: Colors.grey[600], fontSize: 17),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              controller: ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              itemCount: payouts.length,
              itemBuilder: (context, index) {
                return Products(
                    prologo: payouts[index][0],
                    ordernum: payouts[index][1],
                    datentime: payouts[index][2],
                    amount: payouts[index][3],
                    status: payouts[index][4],
                    fundtransfer: payouts[index][5]);
              })
        ],
      ),
    );
  }
}

class Products extends StatelessWidget {
  final String prologo;
  final String ordernum;
  final String datentime;
  final String amount;
  final String status;
  final String fundtransfer;

  Products(
      {required this.prologo,
      required this.ordernum,
      required this.datentime,
      required this.amount,
      required this.status,
      required this.fundtransfer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                          color: Color.fromARGB(255, 235, 227, 227))),
                  child: Image.asset(
                    prologo,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ordernum,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      datentime,
                      style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  amount,
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      status,
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          fundtransfer,
          style: TextStyle(
              fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Divider(height: 20)
      ],
    );
  }
}
