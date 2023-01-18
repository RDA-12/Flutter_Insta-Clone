class PostModel {
  final String username;
  final String caption;
  final String likesAmmount;
  final int commentsAmount;
  final List<String> photos;
  final String date;

  PostModel({
    required this.username,
    required this.caption,
    required this.commentsAmount,
    required this.photos,
    required this.date,
    required this.likesAmmount,
  });
}
