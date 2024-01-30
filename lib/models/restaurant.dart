class restaurant {
  bool? success;
  List<RestaurantDtls>? restaurantDtls;

  restaurant({this.success, this.restaurantDtls});

  restaurant.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['restaurantDtls'] != null) {
      restaurantDtls = <RestaurantDtls>[];
      json['restaurantDtls'].forEach((v) {
        restaurantDtls!.add(new RestaurantDtls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.restaurantDtls != null) {
      data['restaurantDtls'] =
          this.restaurantDtls!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RestaurantDtls {
  int? restaurantId;
  String? restaurantName;
  String? restaurantImage;

  RestaurantDtls(
      {this.restaurantId, this.restaurantName, this.restaurantImage});

  RestaurantDtls.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    restaurantName = json['restaurantName'];
    restaurantImage = json['restaurantImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    data['restaurantName'] = this.restaurantName;
    data['restaurantImage'] = this.restaurantImage;
    return data;
  }
}
