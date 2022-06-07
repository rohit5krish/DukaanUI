import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #1688068'),
        centerTitle: true,
        toolbarHeight: 65,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('May 31, 05:42 PM'),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 13,
                      color: Colors.blue[900],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1 ITEM',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                Row(
                  children: [
                    Icon(
                      Icons.receipt_outlined,
                      color: Colors.blue[900],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'RECEIPT',
                      style: TextStyle(fontSize: 12, color: Colors.blue[900]),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 64,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 219, 217, 217)),
                      borderRadius: BorderRadius.circular(3)),
                  child: Image.asset('products/pro1.jpg'),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore | Men | Navy Blue',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1 piece',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Size: XL',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 43, 40, 196))),
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 11, color: Colors.blue[900]),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          'x ₹799',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 195,
                        ),
                        Text(
                          '₹799',
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Divider(
              height: 40,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Item Total',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  '₹799',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'FREE',
                  style: TextStyle(fontSize: 13, color: Colors.red),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Grand Total',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '₹799',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 30,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CUSTOMER DETAILS',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.blue[900],
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deepa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '+91-7829000484',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue[900],
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.whatsapp,
                      size: 30,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Address',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text('D 1101 Chartered Beverly Hills,'),
            SizedBox(height: 5),
            Text('Subramanyapura P.O'),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Banglore'),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(
                  children: [
                    Text(
                      'Pincode',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('560061')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Online'),
                  ],
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                )
              ],
            ),
            Divider(
              height: 30,
              thickness: 1,
            ),
            Text(
              'ADDITIONAL INFORMATION',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'State',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Karnataka',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'greeniceaqua@gmail.com',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 65, 63, 177)),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Text(
                'Share receipt',
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
