import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/screens/screens.dart';

class ArticleTrailer extends StatelessWidget {
  final Article article;
  const ArticleTrailer({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ArticleDeatils(article: article)),
      child: Container(
        child: ListTile(
            leading: Container(
              height: 120.0,
              width: 100.0,
              child: FlutterLogo(
                style: FlutterLogoStyle.stacked,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: .45),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text("Leicester confirms siging a player from Salzbourg",
                maxLines: 2, overflow: TextOverflow.ellipsis),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2021 Jul 19"),
                Row(
                  children: [Icon(LineIcons.fire)],
                )
              ],
            )),
      ),
    );
  }
}
