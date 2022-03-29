//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'next.dart';
import 'search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//stateless widget
class InfoColumn extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const InfoColumn({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 5),
          Image(
            image: AssetImage('$picture'),
            height: 25,
            width: 25,
          ),
          const SizedBox(height: 10),
          Text(
            '$title',
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '$subtitle',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class Info2Column extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const Info2Column({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 34, 112, 228),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 5),
          Image(
            image: AssetImage('$picture'),
            height: 25,
            width: 25,
          ),
          const SizedBox(height: 10),
          Text(
            '$title',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '$subtitle',
            style: TextStyle(
              color: Colors.white.withOpacity(0.4),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _infoColumn(
    String title,
    String subtitle, {
    bool inverse = false,
  }) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.4)
                : Colors.white.withOpacity(0.8),
            fontSize: 18,
            fontWeight: inverse ? FontWeight.w600 : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.8)
                : Colors.white.withOpacity(0.4),
            fontSize: 15,
            fontWeight: inverse ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _infoSColumn(
    String title,
    String subtitle, {
    bool inverse = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.4)
                : Colors.white.withOpacity(0.8),
            fontSize: 18,
            fontWeight: inverse ? FontWeight.w600 : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.8)
                : Colors.white.withOpacity(0.4),
            fontSize: 15,
            fontWeight: inverse ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }

/*  Widget _infoPColumn(
    String image,
    String title,
    String subtitle, {
    bool inverse = false,
  }) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 5),
        Image(
          image: AssetImage(image),
          height: 25,
          width: 25,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.black.withOpacity(0.4)
                : Colors.black.withOpacity(0.8),
            fontSize: 28,
            fontWeight: inverse ? FontWeight.w600 : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.black.withOpacity(0.8)
                : Colors.black.withOpacity(0.4),
            fontSize: 13,
            fontWeight: inverse ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _infoP2Column(
    String image,
    String title,
    String subtitle, {
    bool inverse = false,
  }) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 5),
        Image(
          image: AssetImage(image),
          height: 25,
          width: 25,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.4)
                : Colors.white.withOpacity(0.8),
            fontSize: 28,
            fontWeight: inverse ? FontWeight.w600 : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.white.withOpacity(0.8)
                : Colors.white.withOpacity(0.4),
            fontSize: 13,
            fontWeight: inverse ? FontWeight.bold : FontWeight.w600,
          ),
        ),
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 112, 228),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _infoColumn('Bayumas,Indonesia', 'Monday,o7 March 2022')
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.2),
              ),
              child: const Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 30,
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
                  height: 260,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 20),
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
                            const VerticalDivider(
                              width: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            _infoSColumn(
                              'Sunny Afternoon',
                              '12 PM - 3 PM',
                            )
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            _infoColumn('Wind', '18km/h', inverse: true),
                            const SizedBox(width: 40),
                            _infoColumn('Pressure', '1014 mbar', inverse: true),
                            const SizedBox(width: 40),
                            _infoColumn('Humidity', '32%', inverse: true),
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
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Be careful, at 6 PM, there would be rain,\nprepare yourself for it.',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    height: 1.3,
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
              const SizedBox(height: 20),
              Container(
                height: 220,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
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
                            height: 35,
                            width: 140,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Row(
                                children: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const MyNextPage(),
                                      ),
                                    ),
                                    child: const Text(
                                      'Next 7 Days',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 214, 10),
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: const <Widget>[
                          InfoColumn(
                            picture: 'images/weather2.jpg',
                            title: '19°',
                            subtitle: '9 AM',
                          ),
                          SizedBox(width: 20),
                          Info2Column(
                            picture: 'images/weather1.png',
                            title: '24°',
                            subtitle: '12 PM',
                          ),
                          SizedBox(width: 20),
                          InfoColumn(
                            picture: 'images/weather2.jpg',
                            title: '21°',
                            subtitle: '3 PM',
                          ),
                          SizedBox(width: 20),
                          InfoColumn(
                            picture: 'images/weather3.jpg',
                            title: '18°',
                            subtitle: '6 PM',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 19),
                    const Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 34, 112, 228)
                          .withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40),
                    ),
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
                  ),
                  const SizedBox(width: 60),
                  IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MySearchPage(),
                      ),
                    ),
                    icon: Icon(
                      Icons.search_rounded,
                      size: 35,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const SizedBox(width: 60),
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
      ),
    );
  }
}
