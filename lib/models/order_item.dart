// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'discount.dart';


class OrderItems {
  String? item;
  Discount? discount;
  String? itemName;
  String? description;
  bool? isVegetarian;
  int? quantity;
  Discount? yrRate;
  Discount? baseRate;
  Discount? taxRate;
  Discount? yrAmount;
  String? sId;
  OrderItems({
    this.item,
    this.discount,
    this.itemName,
    this.description,
    this.isVegetarian,
    this.quantity,
    this.yrRate,
    this.baseRate,
    this.taxRate,
    this.yrAmount,
    this.sId,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'item': item,
      'discount': discount?.toMap(),
      'itemName': itemName,
      'description': description,
      'isVegetarian': isVegetarian,
      'quantity': quantity,
      'yrRate': yrRate?.toMap(),
      'baseRate': baseRate?.toMap(),
      'taxRate': taxRate?.toMap(),
      'yrAmount': yrAmount?.toMap(),
      '_id': sId,
    };
  }

  factory OrderItems.fromMap(Map<String, dynamic> map) {
    return OrderItems(
      item: map['item'],
      discount: map['discount'] ,
      itemName: map['itemName'] ,
      description: map['description'] ,
      isVegetarian: map['isVegetarian'] ,
      quantity: map['quantity'] ,
      yrRate: map['yrRate'] ,
      baseRate: map['baseRate'] ,
      taxRate: map['taxRate'] ,
      yrAmount: map['yrAmount'],
      sId: map['_id'] ,
    );
  }

}
