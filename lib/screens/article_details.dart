import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/utils/utils.dart';
import 'package:metro_sports/widgets/action_button.dart';
import 'package:metro_sports/widgets/widgets.dart';

class ArticleDeatils extends StatelessWidget {
  final Article article;
  const ArticleDeatils({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          // actions: [
          //   IconButton(
          //       icon: Icon(LineIcons.search),
          //       onPressed: () => print("Looking for something")),
          //   IconButton(
          //       icon: Icon(LineIcons.shareSquareAlt),
          //       onPressed: () => print("Sharing content")),
          // ],
          expandedHeight: 180.0,
          flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      article.imagePath,
                    )),
              )),
              collapseMode: CollapseMode.pin,
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
                StretchMode.zoomBackground
              ],
              title: Text(article.title, overflow: TextOverflow.ellipsis)),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 20.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Palette.primary.withOpacity(0.2),
                border: BorderDirectional(
                    start: BorderSide(width: 5.0, color: Palette.primary))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
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
                      Text(
                        "Author : ${article.author}",
                        style: Styles.designSubHeading(),
                      ),
                      Text("22 Jul 2021")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionButton(
                          icon: LineIcons.eye,
                          color: Palette.secondary,
                          label: "${article.viewsCount} views",
                          callback: () => print("viewed")),
                      ActionButton(
                          icon: LineIcons.heartAlt,
                          color: Palette.primary,
                          label: "${article.likesCount} likes",
                          callback: () => print("Liked")),
                      ActionButton(
                          icon: LineIcons.shareSquare,
                          color: Palette.warning,
                          label: "${article.sharesCount} shares",
                          callback: () => print("Shared"))
                    ],
                  ),
                ],
              ),
            ),
          ),
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(12.0) +
                const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Text("""
            Lorem iosum dolor si amet do set consectur de la hamma
                  Excepteur eu culpa do enim excepteur amet duis pariatur fugiat sint qui aliqua eiusmod. Pariatur aliqua aute velit duis sint quis pariatur cupidatat ex qui. Esse ex velit eu exercitation ad. Qui dolore aliquip commodo elit amet Lorem magna laborum ullamco eu nisi cupidatat aute quis. Magna eiusmod enim quis nostrud duis id. Excepteur exercitation incididunt pariatur exercitation. Irure ut adipisicing exercitation voluptate do consectetur laborum aliquip elit velit tempor ut incididunt.

                Cupidatat elit aliquip esse nisi nisi voluptate ipsum dolore officia. Sint est ea id excepteur ex ad reprehenderit ipsum aliqua qui in. Elit dolore occaecat ea sint duis deserunt incididunt deserunt tempor officia exercitation. Occaecat id culpa anim sint magna tempor ex aute. Culpa dolore consequat cupidatat dolor et cillum est non. Ullamco enim cillum id minim ex.

                Officia exercitation est reprehenderit tempor. Irure labore nisi ipsum laborum velit fugiat ipsum consequat nisi elit ex ad laborum non. Sint deserunt commodo pariatur dolore id minim. Ea qui exercitation incididunt cupidatat ipsum id. Reprehenderit dolore aute consectetur irure. Est ullamco quis laboris ex quis nostrud.

                Ad sit reprehenderit sunt sunt ipsum minim cupidatat commodo irure proident fugiat. In consequat sit officia aute nisi nulla aute nisi. Deserunt excepteur anim mollit ullamco elit exercitation nisi amet occaecat elit. Tempor Lorem deserunt officia velit veniam et dolor nostrud voluptate incididunt elit incididunt.
                Aliqua veniam deserunt sit culpa dolor commodo. Reprehenderit pariatur reprehenderit nisi nulla fugiat tempor officia id. Ea veniam anim exercitation Lorem deserunt. Magna dolor laboris consequat officia proident sunt magna laboris reprehenderit ipsum laborum nisi. Laborum irure ad dolore consequat mollit duis reprehenderit amet ullamco deserunt occaecat."""),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 4.0),
                    child: Row(
                      children: [
                        Icon(LineIcons.userCircle, size: 32.0),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text("Alpha user")
                      ],
                    ),
                  ),
                  TextField(
                    maxLines: 2,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(14.0),
                        hintText: "Leave a comment...",
                        border: InputBorder.none),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ActionButton(
                            icon: Icons.chat_bubble,
                            color: Palette.primary,
                            label: "comment",
                            callback: () => print("viewed")),
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(22.0),
                  border: Border.all(color: Palette.primary, width: 1.50))),
        )),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ...article.comments!
                  .map((comment) => Comment(model: comment))
                  .toList()
            ],
          ),
        )
      ],
    ));
  }
}
