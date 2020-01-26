import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () => print('Search'),
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.black54,
            ),
          ),
        ],
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Avengers',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0099FF),
            ),
          ),
        ),
        elevation: 0.0,
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'SEP',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    dateItem('14', 'FRI', true, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('15', 'SAT', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('16', 'SUN', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('17', 'MON', false, false),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('18', 'TUE', false, false),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('19', 'WED', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('20', 'THU', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('21', 'FRI', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('22', 'SAT', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('23', 'SUN', false, true),
                    SizedBox(
                      height: 16.0,
                    ),
                    dateItem('24', 'MON', false, true),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 8.0,
                    ),
                    dayItem(
                        'Tony Stark', 'assets/images/tony.jpeg', '14', 'FRI'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem(
                        'Peter Parker', 'assets/images/peter.jpg', '15', 'SAT'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem('Steven Strange', 'assets/images/strange.jpg', '16',
                        'SUN'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem('Bruce Banner', 'assets/images/banner.jpg', '19',
                        'WED'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem('Natasha Romanof', 'assets/images/natasha.jpeg',
                        '20', 'THU'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem('Thor', 'assets/images/thor.jpg', '21', 'FRI'),
                    SizedBox(
                      height: 16.0,
                    ),
                    dayItem(
                        'Steve Rogers', 'assets/images/steve.jpg', '22', 'SAT'),
                    SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

dayItem(String name, String imgPath, String date, String day) {
  return Card(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Stack(
      children: <Widget>[
        Container(
          height: 275.0,
          width: 275.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 10.0,
          left: 230,
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 5.0),
                Text(
                  date,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                SizedBox(height: 5.0),
                Text(
                  day,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

dateItem(String date, String day, bool selected, bool available) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: selected ? Color(0xFF0099FF) : Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 5.0),
        Text(
          date,
          style: TextStyle(
              color: available
                  ? selected ? Colors.white : Colors.black
                  : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18.0),
        ),
        SizedBox(height: 5.0),
        Text(
          day,
          style: TextStyle(
            color: available
                ? selected ? Colors.white : Colors.black
                : Colors.grey,
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
