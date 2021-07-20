import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/screens/news.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(ProviderScope(child: MetroSports237()));
}

class MetroSports237 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            textTheme:
                GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme)),
        home: Home());
  }
}

/*
  ---------NAVIGATION SCREENS-------------
  This list contains the widgets corresponding to the navigation screens
*/
final List<Widget> screens = [
  News(),
  Scaffold(),
  Scaffold(),
  Scaffold(),
];
final indexProvider = StateProvider<int>((ref) => 0);

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useProvider(indexProvider);
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
        body: IndexedStack(index: index.state, children: [...screens]),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 3.0,
          child: Container(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavItem(
                  icon: LineIcons.newspaperAlt,
                  position: 0,
                ),
                NavItem(
                  icon: LineIcons.basketballBall,
                  position: 1,
                ),
                NavItem(
                  icon: LineIcons.television,
                  position: 2,
                ),
                NavItem(
                  icon: LineIcons.barChart,
                  position: 3,
                )
              ],
            ),
          ),
        ));
  }
}

class NavItem extends HookWidget {
  final IconData icon;
  final int position;
  const NavItem({Key? key, required this.icon, required this.position})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final index = useProvider(indexProvider);
    return IconButton(
      icon: Icon(icon,
          size: 24.0,
          color: position == index.state ? Colors.green : Colors.black54),
      onPressed: () => index.state = position,
    );
  }
}
