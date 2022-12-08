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
        // const SizedBox(height: 10),
        Row(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text('Hello'),
          )
        ]),
        const SizedBox(height: 20),
        const CustomLabel(label: 'Motivasi'),
        // const SizedBox(height: 10),
        Row(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text('Hello'),
          )
        ]),
        // const Text(
        //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et augue hendrerit, vehicula magna ut, vestibulum leo. Donec augue mauris, cursus ut ex eget, suscipit pellentesque nibh. Aliquam sem lacus, commodo ac vulputate quis, maximus vitae diam. Quisque porttitor augue quis cursus mattis. Nulla elementum risus ac congue tristique. Phasellus vitae est at quam porta fermentum in sit amet massa. Maecenas condimentum aliquam iaculis. Phasellus sagittis cursus risus, at sodales elit molestie non.',
        //   style: TextStyle(fontSize: 15),
        // )
      ],
    ));
  }
}
