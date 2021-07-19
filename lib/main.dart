import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/screens/news.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(MetroSports237());
}

class MetroSports237 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme:
                GoogleFonts.robotoTextTheme(Theme.of(context).textTheme)),
        home: Home());
  }
}

final List<Widget> screens = [
  News(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => print("action..."),
            child: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(LineIcons.identificationBadge))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
            leadingWidth: 25.0,
            leading: IconButton(
              icon: Icon(LineIcons.tasks),
              onPressed: null,
            ),
            title: Logo(),
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              IconButton(
                icon: Icon(LineIcons.search),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(LineIcons.bellAlt),
                onPressed: null,
              ),
            ]),
        drawer: Drawer(),
        body: IndexedStack(index: 0, children: [...screens]),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 3.0,
          child: Container(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  LineIcons.newspaperAlt,
                  size: 24.0,
                ),
                Icon(
                  LineIcons.basketballBall,
                  size: 24.0,
                ),
                Icon(
                  LineIcons.television,
                  size: 24.0,
                ),
                Icon(
                  LineIcons.barChartAlt,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ));
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final String label;
  final IconData icon;
  const BottomNavItem(
      {Key? key,
      required this.isActive,
      required this.label,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          color: !isActive ? Colors.white : Colors.green.shade100,
          child: Row(
            children: [
              Icon(icon, color: isActive ? Colors.green : Colors.black45),
              Text(label,
                  style: TextStyle(
                      color: isActive ? Colors.green : Colors.black45))
            ],
          )),
    );
  }
}
