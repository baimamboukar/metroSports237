import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/screens/screens.dart';
import 'package:metro_sports/utils/utils.dart';

class ArticleTrailer extends StatelessWidget {
  final Article article;
  const ArticleTrailer({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ArticleDeatils(article: article),
          transition: Transition.leftToRightWithFade,
          duration: Duration(milliseconds: 700)),
      child: Container(
        child: ListTile(
            leading: Container(
              height: 120.0,
              width: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        article.imagePath,
                      )),
                  border: Border.all(color: Colors.green, width: 1.20),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            title: Text(article.title,
                style: Styles.designSubHeading(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2021 Jul 19"),
                Row(
                  children: [
                    Icon(LineIcons.fire),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
