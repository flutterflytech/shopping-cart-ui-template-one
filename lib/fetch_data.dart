class Post{

  final String itemRating;
  final String itemPrice;
  final String itemImage;
  final String itemName;

  Post({this.itemRating, this.itemPrice, this.itemImage, this.itemName});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      itemRating: json['itemRating'],
      itemPrice: json['itemPrice'],
      itemImage: json['itemImage'],
      itemName: json['itemName'],
    );
  }

  @override
  String toString() {
    return 'Post{itemRating: $itemRating, itemPrice: $itemPrice, itemImage: $itemImage, itemName: $itemName}';
  }


}