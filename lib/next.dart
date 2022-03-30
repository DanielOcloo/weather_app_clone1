import 'package:flutter/material.dart';

class MyNextPage extends StatefulWidget {
  const MyNextPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNextPage> createState() => _MyNextPageState();
}

class _MyNextPageState extends State<MyNextPage> {
  Widget _info2Column(
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  height: 95,
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
                          children: const <Widget>[
                            Padding(
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
                            SizedBox(width: 30),
                            VerticalDivider(
                              width: 20,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            InfoSColumn(
                              title: 'Sunny Afternoon',
                              subtitle: 'Monday, 07 March 2022',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 700,
                width: 430,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Tomorrow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 160,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
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
                                        color:
                                            Color.fromARGB(255, 34, 112, 228),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  VerticalDivider(
                                    width: 20,
                                    color: Colors.black.withOpacity(0.4),
                                  ),
                                  const SizedBox(width: 10),
                                  const InfoSColumn2(
                                    title: 'Sunny Afternoon',
                                    subtitle: 'Tuesday, 08 March 2022',
                                  )
                                ],
                              ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  _info2Column('Wind', '18km/h', inverse: true),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  _info2Column('Pressure', '1014 mbar',
                                      inverse: true),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  _info2Column('Humidity', '32%',
                                      inverse: true),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
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
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.2),
                          ),
                        ),
                        child: ListView(
                          children: <Widget>[
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather1.png',
                                title: 'Wed, 09 March 2022',
                                ftrail: '20°/',
                                strail: '24°',
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 0,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather1.png',
                                title: 'Thu, 10 March 2022',
                                ftrail: '24°/',
                                strail: '20°',
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 0,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather2.jpg',
                                title: 'Fri, 11 March 2022',
                                ftrail: '17°/',
                                strail: '20°',
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 0,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather3.jpg',
                                title: 'Sat, 12 March 2022',
                                ftrail: '22°/',
                                strail: '23°',
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 0,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather2.jpg',
                                title: 'Sun, 13 March 2022',
                                ftrail: '24°/',
                                strail: '21°',
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                              height: 0,
                              thickness: 2,
                              color: Colors.black.withOpacity(0.1),
                            ),
                            const ListTile(
                              title: InfoRow(
                                picture: 'images/weather2.jpg',
                                title: 'Mon,14 March 2022',
                                ftrail: '24°/',
                                strail: '21°',
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
    );
  }
}

class InfoRow extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? ftrail;
  final String? strail;

  const InfoRow({
    Key? key,
    this.picture,
    this.title,
    this.ftrail,
    this.strail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 10),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage(
                '$picture',
              ),
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 20),
            Text(
              '$title',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 40),
            VerticalDivider(
              indent: 2,
              endIndent: 2,
              width: 15,
              color: Colors.black.withOpacity(0.3),
            ),
            const SizedBox(width: 10),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '$ftrail',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '$strail',
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
      ),
    );
  }
}

class InfoSColumn extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const InfoSColumn({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$subtitle',
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class InfoSColumn2 extends StatelessWidget {
  final String? picture;
  final String? title;
  final String? subtitle;

  const InfoSColumn2({
    Key? key,
    this.picture,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
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
