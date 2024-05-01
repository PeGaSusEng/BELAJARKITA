import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
                      Image.asset('assets/pageSoshum/geo.png',
                          width: 100, height: 100),
                      const Text('Geografi',
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
                      Image.asset('assets/pageSoshum/sejarah.png',
                          width: 100, height: 100),
                      const Text('Sejarah',
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
                      Image.asset('assets/pageSoshum/Ekonomi.png',
                          width: 100, height: 100),
                      const Text('Ekonomi',
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
                      Image.asset('assets/pageSoshum/Sosiologi.png',
                          width: 100, height: 100),
                      const Text('Sosiologi',
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
