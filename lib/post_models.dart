class Posts{
  Posts (
      {required this.address,
      required this.username,
      required this.caption,
      required this.postImage,
      required this.userPhoto});

  String username;
  String address;
  String caption;
  String postImage;
  String userPhoto;

  get likes => null;
}