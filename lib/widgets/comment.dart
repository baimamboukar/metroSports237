import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metro_sports/models/models.dart';
import 'package:metro_sports/utils/utils.dart';

class Comment extends StatelessWidget {
  final CommentModel model;
  const Comment({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0) + const EdgeInsets.only(left: 10.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(children: [
            Row(
              children: [
                Icon(LineIcons.userCircle, size: 42.0),
                const SizedBox(height: 15.0),
                Text(
                  model.from.name,
                  style: Styles.designSubHeading(),
                ),
              ],
            ),
            Text(model.comment),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(LineIcons.heartAlt, color: Palette.error),
                        onPressed: () => null),
                    Text(
                      "12",
                      style: Styles.designSubHeading(),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(LineIcons.syncIcon, color: Palette.primary),
                        onPressed: () => null),
                    Text(
                      "03",
                      style: Styles.designSubHeading(),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "02",
                      style: Styles.designSubHeading(),
                    ),
                    IconButton(
                        icon: Icon(LineIcons.share), onPressed: () => null),
                  ],
                ),
              ],
            ),
            ...model.responses
                .map((response) => Padding(
                      padding: const EdgeInsets.only(left: 28.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Palette.light,
                            border: BorderDirectional(
                                start: BorderSide(
                                    width: 2.0,
                                    color: Palette.primary.withOpacity(0.5)))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(LineIcons.userCircle, size: 42.0),
                                  const SizedBox(height: 15.0),
                                  Text(
                                    response.from.name,
                                    style: Styles.designSubHeading(),
                                  ),
                                ],
                              ),
                              Text(response.comment),
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList()
          ]),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.grey.shade100,
            border: BorderDirectional(
                start: BorderSide(width: 3.0, color: Palette.primary))),
      ),
    );
  }
}
