//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'next.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MySearchPage> createState() => _MySearchPageState();
}

class _MySearchPageState extends State<MySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 112, 228),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        title: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'Bayumas,Indonesia',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Monday, 07 March 2022',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
            ],
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
              const SizedBox(
                height: 15,
              ),
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
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 600,
                width: 450,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
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
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Purbalingga',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Sunny                ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    '23°',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 34, 112, 228),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
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
                                children: <Widget>[
                                  Column(
                                    children: [
                                      const Text(
                                        '19°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '21°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 AM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '23°',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 34, 112, 228),
                                        ),
                                      ),
                                      Text(
                                        '12 PM',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                    255, 34, 112, 228)
                                                .withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '26°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '3 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '20°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '6 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '17°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Purbalingga',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Cloudy              ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    '20°',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 34, 112, 228),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      'images/weather2.jpg',
                                    ),
                                    height: 70,
                                    width: 60,
                                  ),
                                ],
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
                                children: <Widget>[
                                  Column(
                                    children: [
                                      const Text(
                                        '20°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '21°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 AM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '20°',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 34, 112, 228),
                                        ),
                                      ),
                                      Text(
                                        '12 PM',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                    255, 34, 112, 228)
                                                .withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '23°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '3 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '19°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '6 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '18°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        height: 155,
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        'Cilacap',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Rainy      ',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 65,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text(
                                    '18°',
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 34, 112, 228),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black.withOpacity(0.15),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
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
                                children: <Widget>[
                                  Column(
                                    children: [
                                      const Text(
                                        '20°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '19°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 AM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '18°',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 34, 112, 228),
                                        ),
                                      ),
                                      Text(
                                        '12 PM',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                    255, 34, 112, 228)
                                                .withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '21°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '3 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '22°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '6 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        '19°',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '9 PM',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
      bottomNavigationBar: Container(
        height: 80,
        width: 300,
        child: Column(
          children: <Widget>[
            const Divider(
              height: 0,
              thickness: 2,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.home_outlined,
                    size: 35,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search_rounded,
                            color: const Color.fromARGB(255, 34, 112, 228)
                                .withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
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
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 34, 112, 228)
                          .withOpacity(0.2),
                      borderRadius: BorderRadius.circular(40),
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
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
