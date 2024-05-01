// ignore_for_file: file_names

import 'package:untitled/pages_Kuantitatif/pages_LatihanSoal1/pages/home_page.dart';
import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  const Restart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Pengetahuan Kuantitatif',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-bold')),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 169,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.fromLTRB(25, 200, 25, 25),
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
                        Image.asset('assets/pageKuantitatif/materi.png',
                            width: 100, height: 100),
                        const Text('Materi',
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset('assets/pageKuantitatif/soal1.png',
                            width: 100, height: 100),
                        const Text('Latihan Soal ke-1',
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
                        Image.asset('assets/pageKuantitatif/soal2.png',
                            width: 100, height: 100),
                        const Text('Latihan Soal ke-2',
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
                        Image.asset('assets/pageKuantitatif/soal3.png',
                            width: 100, height: 100),
                        const Text('Latihan Soal ke-3',
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
                        Image.asset('assets/pageKuantitatif/soal4.png',
                            width: 100, height: 100),
                        const Text('Latihan Soal ke-4',
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
                        Image.asset('assets/pageKuantitatif/pembahasan.png',
                            width: 100, height: 100),
                        const Text('Pembahasan Soal Latihan',
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
        ],
      ),
    );
  }
}
