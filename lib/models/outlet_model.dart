class OutletModel {
  String? status;
  String? openingTime;
  String? closingTime;
  String? minOrderTime;
  int? minOrderAmount;

  OutletModel(
      {this.status,
      this.openingTime,
      this.closingTime,
      this.minOrderTime,
      this.minOrderAmount});

  OutletModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    openingTime = json['opening_time'];
    closingTime = json['closing_time'];
    minOrderTime = json['min_order_time'];
    minOrderAmount = json['min_order_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['opening_time'] = openingTime;
    data['closing_time'] = closingTime;
    data['min_order_time'] = minOrderTime;
    data['min_order_amount'] = minOrderAmount;
    return data;
  }
}
