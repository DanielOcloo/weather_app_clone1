//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'next.dart';
import 'search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //this is a function holding a widget below
  //it helps to extract widgets into functions and classes
  //so you can easily reuse them.
  Widget _infoColumn(
    String title,
    String subtitle, {
    bool inverse = false,
    CrossAxisAlignment alignment = CrossAxisAlignment.center,
  }) {
    return Column(
      crossAxisAlignment: alignment,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.4)
                : Colors.white.withOpacity(0.8),
            fontSize: 18,
            fontWeight: inverse ? FontWeight.normal : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.8)
                : Colors.white.withOpacity(0.4),
            fontSize: 15,
            fontWeight: inverse ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 112, 228),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //However setting centerTitle to true should center whatever
        //widget the title of the appBar is holding.
        //N.B titles are automaticcally centered on ios.
        centerTitle: true,
        toolbarHeight: 80.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        //you dont need to wrap a column in align
        //Column uses crossAxis and mainAxis to position its children
        title: Column(
          children: <Widget>[
            Text(
              'Bayumas,Indonesia',
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Monday, 07 March 2022',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 14,
              ),
            ),
          ],
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
              const Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage('images/weather1.png'),
                  height: 120,
                  width: 120,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
                      //Intrinsic height ensures the divider is the same
                      //height as the all the other elements. Without this
                      //vertical divider will throw errors or not appear at all
                      IntrinsicHeight(
                        child: Row(
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
                            const SizedBox(width: 30),
                            //this is a vertical divider
                            const VerticalDivider(),
                            const SizedBox(
                              width: 20,
                            ),
                            _infoColumn(
                              'Sunny Afternoon',
                              '12 PM - 3 PM',
                              alignment: CrossAxisAlignment.start,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 30,
                        thickness: 1,
                        color: Colors.white.withOpacity(0.3),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Row(
                          children: <Widget>[
                            _infoColumn('Wind', '18km/h', inverse: true),
                            const SizedBox(width: 40),
                            _infoColumn('Pressure', '1014 mbar', inverse: true),
                            const SizedBox(width: 40),
                            _infoColumn('Hummidity', '32%', inverse: true),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 20,
                        height: 30,
                        thickness: 1,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          height: 65,
                          width: 350,
                          //keep your code well organized
                          //properties ontop, before children
                          //makes it easily readable. Dont put decoration
                          //down down below.
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 10,
                            ),
                            child: Column(
                              children: <Widget>[
                                //You dont need to use two text widgets for multiline text
                                //Just use the line breaker [\n] in your string
                                Text(
                                  'Be careful, at 6 PM, there would be rain,\nprepare yourself for it.',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 290,
        width: 300,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: <Widget>[
                  const Text(
                    'Today',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 196),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 5.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //Use arrow functions when it can be
                                  //on the same line else the code gets messy
                                  builder: (context) {
                                    //Name your screens better
                                    return const MyNextPage(
                                        //Keep your page titles in that page please. Not in the constructor
                                        // title: 'Next 7 Days',
                                        );
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Next 7 Days',
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 214, 10),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Color.fromARGB(255, 236, 214, 10),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 236, 214, 10),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 110,
                    width: 80,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        const Image(
                          image: AssetImage('images/weather2.jpg'),
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '19°',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '9 AM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 110,
                    width: 80,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        const Image(
                          image: AssetImage('images/weather1.png'),
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '24°',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '12 PM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 34, 112, 228),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 110,
                    width: 80,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        const Image(
                          image: AssetImage('images/weather2.jpg'),
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '21°',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '3 PM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 110,
                    width: 80,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 5),
                        const Image(
                          image: AssetImage(
                            'images/weather3.jpg',
                          ),
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          '18°',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '6 PM',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(height: 30, thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.home_rounded,
                            color: const Color.fromARGB(255, 34, 112, 228)
                                .withOpacity(0.5),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Home',
                            style: TextStyle(
                              color: Color.fromARGB(255, 34, 112, 228),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 34, 112, 228)
                          .withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MySearchPage(title: 'Search Page'),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.search_rounded,
                      size: 35,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.adjust,
                    size: 35,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(color: Colors.white),
      ),
    );
  }
}
