import 'package:flutter/material.dart';

class AddInfo extends StatefulWidget {
  AddInfo({Key? key}) : super(key: key);

  @override
  State<AddInfo> createState() => _AddInfoState();
}

class _AddInfoState extends State<AddInfo> {
  bool _isSwitched = true;
  final _icons = [
    Icon(
      Icons.share_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.chat_bubble_outline,
      color: Colors.black,
    ),
    Icon(
      Icons.whatsapp_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.lock_outline,
      color: Colors.black,
    ),
    Icon(
      Icons.star_outline,
      color: Colors.black,
    ),
    Icon(
      Icons.logout_outlined,
      color: Colors.black,
    ),
  ];

  final _titles = [
    Text('Share Dukaan App'),
    Text('Change Language'),
    Text('WhatsApp Chat Support'),
    Text('Privacy Policy'),
    Text('Rate Us'),
    Text('Sign Out'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Additonal Information'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        toolbarHeight: 65,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _icons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: _icons[index],
                    title: _titles[index],
                    trailing: switching(index),
                  );
                }),
          ),
          Text(
            'Version',
            style: TextStyle(fontSize: 15, color: Colors.brown[100]),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            '2.4.2',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500]),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }

  dynamic switching(index) {
    final _trailing = [
      Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
      ),
      Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20,
      ),
      Switch(
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          }),
      null,
      null,
      null
    ];
    return _trailing[index];
  }
}
