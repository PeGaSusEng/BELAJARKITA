import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/pageSaintek/fisika.png',
                          width: 100, height: 100),
                      const Text('Fisika',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Times New Roman',
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/pageSaintek/Math.png',
                          width: 100, height: 100),
                      const Text('Matematika',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Times New Roman',
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/pageSaintek/kimia.png',
                          width: 100, height: 100),
                      const Text('Kimia',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Times New Roman',
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/pageSaintek/Biologi.png',
                          width: 100, height: 100),
                      const Text('Biologi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Times New Roman',
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
