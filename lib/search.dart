import 'package:flutter/material.dart';
import 'home_page.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class InfoAColumn extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const InfoAColumn({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          '$subtitle',
          style: TextStyle(
            color: Colors.black.withOpacity(0.4),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class InfoAColumn2 extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const InfoAColumn2({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: const Color.fromARGB(255, 34, 112, 228).withOpacity(0.8),
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          '$subtitle',
          style: TextStyle(
            color: const Color.fromARGB(255, 34, 112, 228).withOpacity(0.8),
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}

class _MySearchPageState extends State<MySearchPage> {
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

  Widget _infoSColumn2(
    String title,
    String subtitle, {
    bool inverse = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: inverse
                ? Colors.black.withOpacity(0.4)
                : Colors.black.withOpacity(0.8),
            fontSize: 18,
            fontWeight: inverse ? FontWeight.w600 : FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          subtitle,
          style: TextStyle(
            color: inverse
                ? Colors.black.withOpacity(0.8)
                : Colors.black.withOpacity(0.4),
            fontSize: 15,
            fontWeight: inverse ? FontWeight.bold : FontWeight.w600,
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
        centerTitle: true,
        toolbarHeight: 80.0,
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
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white.withOpacity(0.15),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    hintText: 'Try  "Jaksel" or somewhere else...',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.white.withOpacity(0.6),
                      size: 35,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 600,
                width: 450,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Nearest Locations',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    _infoSColumn2('Purbalingga', 'Sunny'),
                                    const SizedBox(width: 25),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 20),
                                    const Text(
                                      '23°',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 34, 112, 228),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 30),
                                    const Image(
                                      image: AssetImage(
                                        'images/weather3.jpg',
                                      ),
                                      height: 70,
                                      width: 60,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  InfoAColumn(title: '19°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '21°', subtitle: '9 AM'),
                                  SizedBox(width: 20),
                                  InfoAColumn2(title: '23°', subtitle: '12 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '26°', subtitle: '3 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '20°', subtitle: '6 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '17°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    _infoSColumn2('Purbalingga', 'Cloudy'),
                                    const SizedBox(width: 25),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 20),
                                    const Text(
                                      '20°',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 34, 112, 228),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 30),
                                    const Image(
                                      image: AssetImage(
                                        'images/weather1.png',
                                      ),
                                      height: 70,
                                      width: 60,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  InfoAColumn(title: '20°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '21°', subtitle: '9 AM'),
                                  SizedBox(width: 20),
                                  InfoAColumn2(title: '20°', subtitle: '12 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '23°', subtitle: '3 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '19°', subtitle: '6 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '18°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    _infoSColumn2('Cilacap', 'Rainy'),
                                    const SizedBox(width: 65),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 20),
                                    const Text(
                                      '18°',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 34, 112, 228),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    VerticalDivider(
                                      indent: 17,
                                      endIndent: 17,
                                      width: 10,
                                      thickness: 2.5,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    const SizedBox(width: 30),
                                    const Image(
                                      image: AssetImage(
                                        'images/rainy.png',
                                      ),
                                      height: 70,
                                      width: 60,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 20,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  InfoAColumn(title: '20°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '19°', subtitle: '9 AM'),
                                  SizedBox(width: 20),
                                  InfoAColumn2(title: '18°', subtitle: '12 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '21°', subtitle: '3 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '22°', subtitle: '6 PM'),
                                  SizedBox(width: 20),
                                  InfoAColumn(title: '19°', subtitle: '9 PM'),
                                  SizedBox(width: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        width: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            const Divider(
              height: 0,
              thickness: 2,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ),
                    ),
                    icon: Icon(
                      Icons.home_outlined,
                      size: 35,
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),
                  const SizedBox(width: 60),
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
                            Icons.search_rounded,
                            color: const Color.fromARGB(255, 34, 112, 228)
                                .withOpacity(0.5),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Search',
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
