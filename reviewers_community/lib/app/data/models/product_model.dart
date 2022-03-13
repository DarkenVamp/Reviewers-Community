class Product {
  int? id;
  String? name;
  String? url;
  int? price;
  int? refund;
  String? description;
  String? platform;
  String? reviewType;
  dynamic image;
  bool? mediatorOnly;
  String? createdAt;
  String? modifiedAt;

  Product(
      {this.id,
      this.name,
      this.url,
      this.price,
      this.refund,
      this.description,
      this.platform,
      this.reviewType,
      this.image,
      this.mediatorOnly,
      this.createdAt,
      this.modifiedAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    price = json['price'];
    refund = json['refund'];
    description = json['description'];
    platform = json['platform'];
    reviewType = json['review_type'];
    image = json['image'];
    mediatorOnly = json['mediator_only'];
    createdAt = json['created_at'];
    modifiedAt = json['modified_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['url'] = url;
    data['price'] = price;
    data['refund'] = refund;
    data['description'] = description;
    data['platform'] = platform;
    data['review_type'] = reviewType;
    data['image'] = image;
    data['mediator_only'] = mediatorOnly;
    data['created_at'] = createdAt;
    data['modified_at'] = modifiedAt;
    return data;
  }
}
