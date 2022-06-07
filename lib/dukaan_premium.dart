import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Premium extends StatefulWidget {
  final String? youtubeURL;
  const Premium(this.youtubeURL);

  @override
  State<Premium> createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  late YoutubePlayerController _ytcontroller;
  @override
  void initState() {
    _ytcontroller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: YoutubePlayerParams(
            loop: true,
            strictRelatedVideos: true,
            showFullscreenButton: !kIsWeb,
            autoPlay: false));
    super.initState();
  }

  final faqs = [
    'What is your refund policy?',
    'Will there be an automatic charge after the paid trail?',
    'What payment methods do you offer?',
    'What happens when my free trail ends?',
    'What are the terms for the custom domain?'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Dukaan Premium'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        toolbarHeight: 65,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.blue[900],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 230,
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'icons/dukaan_icon.jpg',
                                  height: 50,
                                  width: 50,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'icons/dukaan_name.jpg',
                                  height: 25,
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'PREMIUM',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[800]),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Get Dukaan Premium for just ₹4,999/year',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'All the advanced features for scaling your business',
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[600]),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Features',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(13),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 106, 30, 230)),
                    ),
                    child: Image.asset(
                      'icons/globe.png',
                      color: Colors.blue[900],
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Custom domain name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Get your own custom domain and build your brand on the internet.',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(13),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 106, 30, 230)),
                    ),
                    child: Image.asset(
                      'icons/verify.png',
                      color: Colors.blue[900],
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verified seller badge',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Get green verified badge under your store name and build trust.',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(13),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 106, 30, 230)),
                    ),
                    child: Image.asset(
                      'icons/laptop.png',
                      color: Colors.blue[900],
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dukaan for PC',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Access all the exclusive premium features on Dukaan for PC.',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(13),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 1.5, color: Color.fromARGB(255, 106, 30, 230)),
                    ),
                    child: Image.asset(
                      'icons/support.png',
                      color: Colors.blue[900],
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority support',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Get your questions resolved with our priority customer support.',
                        style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: YoutubePlayerControllerProvider(
                      controller: _ytcontroller,
                      child: YoutubePlayerIFrame(
                        controller: _ytcontroller,
                      )),
                )
              ],
            ),
          ),
          Divider(
            thickness: 3,
            indent: 10,
            endIndent: 10,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  'Frequently asked questions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'What types of businesses can use Dukaan Premium?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.minimize,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    'Dukaan caters ti a wude variety of sellers.Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                ),
                ListView.separated(
                  controller: ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  itemCount: faqs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        faqs[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.black,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                ),
              ],
            ),
          ),
          Divider(
            thickness: 3,
            indent: 10,
            endIndent: 10,
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Need help? Get in touch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Color.fromARGB(255, 211, 208, 208)),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.messenger_outline_outlined,
                      size: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Live Chat',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Color.fromARGB(255, 211, 208, 208)),
                    borderRadius: BorderRadius.circular(5)),
                height: 100,
                width: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      size: 35,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Phone Call',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
            height: 50,
            indent: 10,
            endIndent: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Text(
                    'Select Domain',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900], minimumSize: Size(150, 50)),
                  onPressed: () {
                    print('Pressed');
                  },
                  child: Text(
                    'Get Premium',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
