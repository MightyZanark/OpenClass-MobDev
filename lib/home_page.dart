import 'package:flutter/material.dart';
import 'custom_label.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xFF5038BC),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))),
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(height: 20),
              CircleAvatar(
                  radius: 100,
                  child: ClipOval(
                      child: Image.network(
                          'https://avatars.githubusercontent.com/u/40352213?s=400&u=02455cdc45d5e0e85b481f843ffea19fc2848242&v=4'))),
              const SizedBox(height: 20),
              const Text(
                'Juan Maxwell Tanaya',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 5),
              const Text('NPM 220682352',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white))
            ],
          ),
        ),
        const SizedBox(height: 50),
        const CustomLabel(label: 'Bio'),
        Row(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text(
              'Gak tau mau isi apaan, mungkin nge plug GitHub aja :)\n'
              'GitHub: https://github.com/MightyZanark',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
        const SizedBox(height: 20),
        const CustomLabel(label: 'Motivasi'),
        Row(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Text(
              'Motivasi saya ikut Mobile Development adalah karena saya ingin\n'
              'belajar proses membuat suatu aplikasi agar bisa berkontribusi\n'
              'terhadap aplikasi di GitHub yang saya cukup sering gunakan\n'
              '(walaupun aplikasi tersebut dibuat dengan Java & Kotlin)',
              style: TextStyle(fontSize: 15),
            ),
          )
        ]),
      ],
    ));
  }
}
