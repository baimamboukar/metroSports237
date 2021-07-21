import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/widgets/widgets.dart';

var _article = Article(
    title: "Leicester confirms signin a player form RZ Salsbourg",
    subtitle: "Mercato news",
    author: "Loremson Ipsumson",
    imagePath: "assets/images/leicester-signin.png",
    viewsCount: 10,
    likesCount: 145,
    sharesCount: 03,
    date: DateTime(2021, 10, 02).toUtc(),
    comments: []);

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 45.0,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.green.shade100,
              tabs: [
                Row(
                  children: [Icon(LineIcons.fire), Text("Headlines")],
                ),
                Row(
                  children: [Icon(LineIcons.baseballBall), Text("Baseball")],
                ),
                Row(
                  children: [Icon(LineIcons.golfBall), Text("Golf")],
                ),
                Row(
                  children: [Icon(LineIcons.basketballBall), Text("Basket")],
                ),
                Row(
                  children: [Icon(LineIcons.volleyballBall), Text("Volley")],
                ),
                Row(
                  children: [Icon(LineIcons.footballBall), Text("Hand")],
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HeadingText(text: "Trending news", icon: LineIcons.fire),
                  Container(child: Feed()),
                  HeadingText(text: "Mercato news", icon: LineIcons.syncIcon),
                  Container(child: Feed()),
                  HeadingText(
                      text: "Latest news", icon: LineIcons.newspaperAlt),
                  Container(child: Feed())
                ],
              )),
              Icon(LineIcons.ad),
              Icon(LineIcons.ad),
              Icon(LineIcons.ad),
              Icon(LineIcons.ad),
              Icon(LineIcons.ad)
            ],
          )),
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ArticleTrailer(article: _article);
        },
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  final IconData icon;
  final String text;
  const HeadingText({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 24.0),
          const SizedBox(
            width: 12.0,
          ),
          Text(text,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
