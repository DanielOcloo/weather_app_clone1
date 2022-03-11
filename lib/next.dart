//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNextPage extends StatefulWidget {
  const MyNextPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyNextPage> createState() => _MyNextPageState();
}

class _MyNextPageState extends State<MyNextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 112, 228),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70.0,
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Next 7 Days',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 40,
              width: 40,
              child: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 30,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text(
                              '24°',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 45,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.3),
                              fontSize: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'Sunny Afternoon      ',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Monday. 07 March 2022',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.4),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 95,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 700,
                width: 430,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tomorrow',
                          style: TextStyle(
                            //color: Colors.white.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 50),
                                  child: Text(
                                    '24°',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 34, 112, 228),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 45,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 40,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Sunny Afternoon      ',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Tuesday. 08 March 2022',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 30,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35.0),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Wind',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '18km/h',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Pressure',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '1014 mbar',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        'Hummidity',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '32%',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Next Days',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'images/weather1.png',
                                    ),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const Text(
                                  'Wed, 09 March 2022',
                                  style: TextStyle(
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: '20°/',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '24°',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'images/weather1.png',
                                    ),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                const Text(
                                  'Thu, 10 March 2022',
                                  style: TextStyle(
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 53,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: '24°/',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '20°',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'images/weather3.jpg',
                                    ),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 28,
                                ),
                                const Text(
                                  'Fri, 11 March 2022',
                                  style: TextStyle(
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: '17°/',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '20°',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'images/weather2.jpg',
                                    ),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  'Sat, 12 March 2022',
                                  style: TextStyle(
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 54,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: '22°/',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '23°',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Row(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Image(
                                    image: AssetImage(
                                      'images/weather1.png',
                                    ),
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  'Sun, 13 March 2022',
                                  style: TextStyle(
                                    // color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.1),
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: '24°/',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '21°',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                        ),
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
