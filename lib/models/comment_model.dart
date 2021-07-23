import 'package:metro_sports/models/models.dart';

class CommentModel {
  final User from;
  final String comment;
  final DateTime timeAgo;
  final List<CommentModel> responses;

  CommentModel(
      {required this.comment,
      required this.timeAgo,
      required this.responses,
      required this.from});
}
