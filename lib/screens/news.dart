import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/widgets/widgets.dart';

var _article = Article(
    title: "Leicester City won PL for the 1st time",
    subtitle: "Mercato news",
    imagePath: "assets/images/leicester-signin.png",
    viewsCount: 0,
    likesCount: 0,
    sharesCount: 0,
    date: DateTime.now(),
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(LineIcons.fire),
                        Text("Latest news "),
                      ],
                    ),
                  ),
                  Container(child: Feed()),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(LineIcons.fire),
                        Text("Latest news "),
                      ],
                    ),
                  ),
                  Container(child: Feed()),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(LineIcons.fire),
                        Text("Latest news "),
                      ],
                    ),
                  ),
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
