import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/widgets/widgets.dart';

var _articles = [
  Article(
      title: "Sergio Ramos joined PSG for 2 years contract",
      subtitle: "Mercato news",
      author: "Darren Too late",
      imagePath: "assets/images/ramos-psg.png",
      viewsCount: 100,
      likesCount: 15,
      sharesCount: 04,
      date: DateTime(2022, 03, 02).toUtc(),
      comments: [
        CommentModel(
            comment: "You are welcome to Paris Saint Germain 🎉🎉🧨🧨🎇",
            from: User(name: "Paris fan"),
            responses: [
              CommentModel(
                  comment: "Glad to have you among us 🎇🎊",
                  from: User(name: "PSG player"),
                  timeAgo: DateTime(2045, 10, 02),
                  responses: [])
            ],
            timeAgo: DateTime(2021, 10, 07)),
        CommentModel(
            comment: "Now our defense is no stress ! 😎😋😋",
            from: User(name: "Machette PSG"),
            responses: [],
            timeAgo: DateTime(2045, 10, 02))
      ]),
  Article(
      title: "Leicester confirms signin a player form RZ Salsbourg",
      subtitle: "Mercato news",
      author: "Loremson Ipsumson",
      imagePath: "assets/images/leicester-signin.png",
      viewsCount: 10,
      likesCount: 145,
      sharesCount: 03,
      date: DateTime(2021, 10, 02).toUtc(),
      comments: [
        CommentModel(
            comment: "Lorem ipsum dolor si amet do set consetcur",
            from: User(name: "User delta"),
            responses: [
              CommentModel(
                  comment: "Ex nihilo nihil fit de la hamma",
                  from: User(name: "User delta"),
                  timeAgo: DateTime(2045, 10, 02),
                  responses: [])
            ],
            timeAgo: DateTime(2021, 10, 07)),
        CommentModel(
            comment: "Ex nihilo nihil fit",
            from: User(name: "User sigma"),
            responses: [],
            timeAgo: DateTime(2045, 10, 02))
      ]),
  Article(
      title: "FIFA WC Qatar 2022 stadiums already known",
      subtitle: "Qatar 2022",
      author: "Al Jazeera news",
      imagePath: "assets/images/qatar.png",
      viewsCount: 120,
      likesCount: 52,
      sharesCount: 14,
      date: DateTime(2022, 08, 02).toUtc(),
      comments: [
        CommentModel(
            comment: "This is just a random comment that makes sense",
            from: User(name: "Qatar fan"),
            responses: [
              CommentModel(
                  comment: "Cannot wait for this epic show 🤩🤩🤩",
                  from: User(name: "Ipsumson Lorem"),
                  timeAgo: DateTime(2045, 10, 02),
                  responses: [])
            ],
            timeAgo: DateTime(2021, 10, 07)),
        CommentModel(
            comment: "Ex nihilo nihil fit.... Will be on the pich 😎😋😋",
            from: User(name: "Player alpha"),
            responses: [],
            timeAgo: DateTime(2045, 10, 02))
      ]),
  Article(
      title: "Mohamed Sallah won the African Ballon d'or",
      subtitle: "CAF",
      author: "Brave Writer",
      imagePath: "assets/images/leicester-signin.png",
      viewsCount: 149,
      likesCount: 10,
      sharesCount: 10,
      date: DateTime(2022, 10, 02).toUtc(),
      comments: [
        CommentModel(
            comment: "Lorem ipsum dolor si amet do set consetcur",
            from: User(name: "User delta"),
            responses: [
              CommentModel(
                  comment: "Ex nihilo nihil fit de la hamma",
                  from: User(name: "Commentator"),
                  timeAgo: DateTime(2045, 10, 02),
                  responses: [])
            ],
            timeAgo: DateTime(2021, 10, 07)),
        CommentModel(
            comment: "Ex nihilo nihil fit",
            from: User(name: "User sigma"),
            responses: [],
            timeAgo: DateTime(2045, 10, 02))
      ])
];

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
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          final _article = _articles[index];
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
