import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/utils/utils.dart';
import 'package:metro_sports/widgets/action_button.dart';

class ArticleDeatils extends StatelessWidget {
  final Article article;
  const ArticleDeatils({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 180.0,
          flexibleSpace: FlexibleSpaceBar(
              title: Text(article.title, overflow: TextOverflow.ellipsis)),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(8.0) +
              const EdgeInsets.only(top: 10.0, left: 20.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: BorderDirectional(
                    start: BorderSide(width: 5.0, color: Palette.primary))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leciester City won its first premier League Trophy",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Author : Loremson Ipsumson"),
                      Text("20 Dec 2026")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionButton(
                          icon: LineIcons.eye,
                          color: Palette.secondary,
                          label: "120 views",
                          callback: () => print("Liked")),
                      ActionButton(
                          icon: LineIcons.heartAlt,
                          color: Palette.primary,
                          label: "10 likes",
                          callback: () => print("Liked")),
                      ActionButton(
                          icon: LineIcons.shareSquare,
                          color: Palette.warning,
                          label: "02 shares",
                          callback: () => print("Liked"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
        Text("")
      ],
    ));
  }
}
