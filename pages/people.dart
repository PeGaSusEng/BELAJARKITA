import 'package:flutter/material.dart';
import 'package:untitled/pages_Kuantitatif/PengetahuanKuantitatif.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Restart()),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/pageTPS/PKuantitatif.png',
                          width: 100, height: 100),
                      const Text('Pengetahuan Kuantitatif',
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
                      Image.asset('assets/pageTPS/PenalarUmum.png',
                          width: 100, height: 100),
                      const Text('Penalaran Umum',
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
                      Image.asset('assets/pageTPS/PemUmum.png',
                          width: 100, height: 100),
                      const Text('Pemahaman Umum',
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
                      Image.asset('assets/pageTPS/Kmembaca.png',
                          width: 100, height: 100),
                      const Text('Kemampuan Memahami Bacaan & Menulis',
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
                      Image.asset('assets/pageTPS/Lbing.png',
                          width: 100, height: 100),
                      const Text('Literasi Bahasa Inggris',
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
                      Image.asset('assets/pageTPS/TryOut.png',
                          width: 100, height: 100),
                      const Text('Try Out',
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
