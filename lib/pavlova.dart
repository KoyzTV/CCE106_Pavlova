import 'package:flutter/material.dart';

void main() {
  runApp(const Pavlova());
}

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tanudtanud_Activity2'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Image.asset('assets/Pavlova.png'),
              ),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Strawberry Pavlova',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Pavlova is a meringue-based dessert named after Anna Pavlova. "
                      "It has a crisp crust, soft inside, topped with fruit and cream.",
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(child: buildRatingRow()),
            const SizedBox(height: 20),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }

  Widget buildRatingRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Text(
          "90 Reviews",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

Widget buildIconTab(IconData icon, String label, String value) {
  return Column(
    children: [
      Icon(icon, color: const Color.fromARGB(255, 244, 3, 123), size: 28),
      const SizedBox(height: 4),
      Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      const SizedBox(height: 4),
      Text(value),
    ],
  );
}

Widget buildRowTabs() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconTab(Icons.timer_outlined, 'PREP', '25 min'),
        buildIconTab(Icons.restaurant, 'COOK', '1 hr'),
        buildIconTab(Icons.people_alt_outlined, 'FEEDS', '4-6'),
      ],
    );
