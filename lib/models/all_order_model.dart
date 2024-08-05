// // // ignore_for_file: public_member_api_docs, sort_constructors_first



// import 'customer_detail.dart';
// import 'delivery_detail.dart';
// import 'discount.dart';
// import 'log.dart';
// class AllOrderModel {
//   CustomerDetails? customerDetails;
//   DeliveryDetails? deliveryDetails;
//   String? sId;
//   String? irctcOrderId;
//   bool? irctcOrderSubmit;
//   String? resturant;
//   String? mobile;
//   String? orderSource;
//   String? deliveryDate;
//   String? bookingDate;
//   String? status;
//   Discount? totalBase;
//   Discount? totalYr;
//   Discount? gst;
//   Discount? yrGst;
//   Discount? deliveryCharge;
//   Discount? totalAmount;
//   Discount? netPayable;
//   String? paymentType;
//   String? paymentMode;
//   Discount? irctcDiscountAmount;
//   Discount? vendorDiscountAmount;
//   Discount? discount;
//   bool? paid;
//   List<Log>? log;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//   String? otp;
//   String? remarks;

//   AllOrderModel({
//     this.customerDetails,
//     this.deliveryDetails,
//     this.sId,
//     this.irctcOrderId,
//     this.irctcOrderSubmit,
//     this.resturant,
//     this.mobile,
//     this.orderSource,
//     this.deliveryDate,
//     this.bookingDate,
//     this.status,
//     this.totalBase,
//     this.totalYr,
//     this.gst,
//     this.yrGst,
//     this.deliveryCharge,
//     this.totalAmount,
//     this.netPayable,
//     this.paymentType,
//     this.paymentMode,
//     this.irctcDiscountAmount,
//     this.vendorDiscountAmount,
//     this.discount,
//     this.paid,
//     this.log,
//     this.createdAt,
//     this.updatedAt,
//     this.iV,
//     this.otp,
//     this.remarks,
//   });

//   factory AllOrderModel.fromMap(Map<String, dynamic> map) {
//     return AllOrderModel(
//       customerDetails: map['customerDetails'] != null ? CustomerDetails.fromMap(map['customerDetails']) : null,
//       deliveryDetails: map['deliveryDetails'] != null ? DeliveryDetails.fromMap(map['deliveryDetails']) : null,
//       sId: map['_id'],
//       irctcOrderId: map['irctcOrderId'],
//       irctcOrderSubmit: map['irctcOrderSubmit'],
//       resturant: map['resturant'],
//       mobile: map['mobile'],
//       orderSource: map['orderSource'],
//       deliveryDate: map['deliveryDate'],
//       bookingDate: map['bookingDate'],
//       status: map['status'],
//       totalBase: map['totalBase'] != null ? Discount.fromMap(map['totalBase']) : null,
//       totalYr: map['totalYr'] != null ? Discount.fromMap(map['totalYr']) : null,
//       gst: map['gst'] != null ? Discount.fromMap(map['gst']) : null,
//       yrGst: map['yrGst'] != null ? Discount.fromMap(map['yrGst']) : null,
//       deliveryCharge: map['deliveryCharge'] != null ? Discount.fromMap(map['deliveryCharge']) : null,
//       totalAmount: map['totalAmount'] != null ? Discount.fromMap(map['totalAmount']) : null,
//       netPayable: map['netPayable'] != null ? Discount.fromMap(map['netPayable']) : null,
//       paymentType: map['paymentType'],
//       paymentMode: map['paymentMode'],
//       irctcDiscountAmount: map['irctcDiscountAmount'] != null ? Discount.fromMap(map['irctcDiscountAmount']) : null,
//       vendorDiscountAmount: map['vendorDiscountAmount'] != null ? Discount.fromMap(map['vendorDiscountAmount']) : null,
//       discount: map['discount'] != null ? Discount.fromMap(map['discount']) : null,
//       paid: map['paid'],
//       log: map['log'] != null ? List<Log>.from(map['log'].map((x) => Log.fromMap(x))) : null,
//       createdAt: map['createdAt'],
//       updatedAt: map['updatedAt'],
//       iV: map['__v'],
//       otp: map['otp'],
//       remarks: map['remarks'],
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'customerDetails': customerDetails?.toMap(),
//       'deliveryDetails': deliveryDetails?.toMap(),
//       '_id': sId,
//       'irctcOrderId': irctcOrderId,
//       'irctcOrderSubmit': irctcOrderSubmit,
//       'resturant': resturant,
//       'mobile': mobile,
//       'orderSource': orderSource,
//       'deliveryDate': deliveryDate,
//       'bookingDate': bookingDate,
//       'status': status,
//       'totalBase': totalBase?.toMap(),
//       'totalYr': totalYr?.toMap(),
//       'gst': gst?.toMap(),
//       'yrGst': yrGst?.toMap(),
//       'deliveryCharge': deliveryCharge?.toMap(),
//       'totalAmount': totalAmount?.toMap(),
//       'netPayable': netPayable?.toMap(),
//       'paymentType': paymentType,
//       'paymentMode': paymentMode,
//       'irctcDiscountAmount': irctcDiscountAmount?.toMap(),
//       'vendorDiscountAmount': vendorDiscountAmount?.toMap(),
//       'discount': discount?.toMap(),
//       'paid': paid,
//       'log': log?.map((x) => x.toMap()).toList(),
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       '__v': iV,
//       'otp': otp,
//       'remarks': remarks,
//     };
//   }
// }

// class AllOrderModel {
// CustomerDetails? customerDetails;
//   DeliveryDetails? deliveryDetails;
//   String? sId;
//   String? irctcOrderId;
//   bool? irctcOrderSubmit;
//   String? resturant;
//   String? mobile;
//   String? orderSource;
//   String? deliveryDate;
//   String? bookingDate;
//   String? status;
//   Discount? totalBase;
//   Discount? totalYr;
//   Discount? gst;
//   Discount? yrGst;
//   Discount? deliveryCharge;
//   Discount? totalAmount;
//   Discount? netPayable;
//   String? paymentType;
//   String? paymentMode;
//   Discount? irctcDiscountAmount;
//   Discount? vendorDiscountAmount;
//   Discount? discount;
//   bool? paid;
//   List<Log>? log;
//   String? createdAt;
//   String? updatedAt;
//   int? iV;
//   String? otp;
//   String? remarks;
 


//   AllOrderModel({
//     this.customerDetails,
//     this.deliveryDetails,
//     this.sId,
//     this.irctcOrderId,
//     this.irctcOrderSubmit,
//     this.resturant,
//     this.mobile,
//     this.orderSource,
//     this.deliveryDate,
//     this.bookingDate,
//     this.status,
//     this.totalBase,
//     this.totalYr,
//     this.gst,
//     this.yrGst,
//     this.deliveryCharge,
//     this.totalAmount,
//     this.netPayable,
//     this.paymentType,
//     this.paymentMode,
//     this.irctcDiscountAmount,
//     this.vendorDiscountAmount,
//     this.discount,
//     this.paid,
//     this.log,
//     this.createdAt,
//     this.updatedAt,
//     this.iV,
//      this.remarks,
//     this.otp,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'customerDetails': customerDetails?.toMap(),
//       'deliveryDetails': deliveryDetails?.toMap(),
//       '_id': sId,
//       'irctcOrderId': irctcOrderId,
//       'irctcOrderSubmit': irctcOrderSubmit,
//       'resturant': resturant,
//       'mobile': mobile,
//       'orderSource': orderSource,
//       'deliveryDate': deliveryDate,
//       'bookingDate': bookingDate,
//       'status': status,
//       'totalBase': totalBase?.toMap(),
//       'totalYr': totalYr?.toMap(),
//       'gst': gst?.toMap(),
//       'yrGst': yrGst?.toMap(),
//       'deliveryCharge': deliveryCharge?.toMap(),
//       'totalAmount': totalAmount?.toMap(),
//       'netPayable': netPayable?.toMap(),
//       'paymentType': paymentType,
//       'paymentMode': paymentMode,
//       'irctcDiscountAmount': irctcDiscountAmount?.toMap(),
//       'vendorDiscountAmount': vendorDiscountAmount?.toMap(),
//       'discount': discount?.toMap(),
//       'paid': paid,
//       'log': log!.map((x) => x.toMap()).toList(),
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       '__v': iV,
//       'otp' :otp,
//       'remarks' :remarks
//     };
//   }

//   factory AllOrderModel.fromMap(Map<String, dynamic> map) {
//     return AllOrderModel(
//       customerDetails: map['customerDetails'],
//       deliveryDetails: map['deliveryDetails'],
//       sId: map['_id'],
//       irctcOrderId: map['irctcOrderId'],
//       irctcOrderSubmit: map['irctcOrderSubmit'],
//       resturant: map['resturant'],
//       mobile: map['mobile'],
//       orderSource: map['orderSource'],
//       deliveryDate: map['deliveryDate'],
//       bookingDate: map['bookingDate'],
//       status: map['status'],
//       totalBase: map['totalBase'],
//       totalYr: map['totalYr'],
//       gst: map['gst'],
//       yrGst: map['yrGst'],
//       deliveryCharge: map['deliveryCharge'],
//       totalAmount: map['totalAmount'],
//       netPayable: map['netPayable'],
//       paymentType: map['paymentType'],
//       paymentMode: map['paymentMode'],
//       irctcDiscountAmount: map['irctcDiscountAmount'],
//       vendorDiscountAmount: map['vendorDiscountAmount'],
//       discount: map['discount'],
//       paid: map['paid'],
//       log: map['log'],
//       createdAt: map['createdAt'],
//       updatedAt: map['updatedAt'],
//       iV: map['__v'],
//       otp : map['otp'],
//       remarks :map['remarks'],
//     );
//   }
// }


// ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'customer_detail.dart';
// import 'delivery_detail.dart';
// import 'discount.dart';
// import 'log.dart';

// class AllOrderModel {
//   String? resturant;
//   String? mobile;
//   String? status;

//   String? createdAt;
//   String? otp;
//   AllOrderModel({
//     this.resturant,
//     this.mobile,
//     this.status,
//     this.createdAt,
//     this.otp,
//   });
  

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'resturant': resturant,
//       'mobile': mobile,
//       'status': status,
//       'createdAt': createdAt,
//       'otp': otp,
//     };
//   }

//    AllOrderModel.fromMap(Map<String, dynamic> map) {
//      AllOrderModel(
//       resturant: map['resturant'],
//       mobile: map['mobile'],
//       status: map['status'],
//       createdAt: map['createdAt'],                                               
//       otp: map['otp'],
//     );
//   }
// }
class AllOrderModel {
  CustomerDetails? customerDetails;
  DeliveryDetails? deliveryDetails;
  String? sId;
  String? orderId;
  String? irctcOrderId;
  bool? irctcOrderSubmit;
  String? resturant;
  String? mobile;
  String? orderSource;
  String? deliveryDate;
  String? bookingDate;
  String? status;
  List<OrderItems>? orderItems;
  Discount? totalBase;
  Discount? totalYr;
  Discount? gst;
  Discount? yrGst;
  Discount? deliveryCharge;
  Discount? totalAmount;
  Discount? netPayable;
  String? paymentType;
  String? paymentMode;
  Discount? irctcDiscountAmount;
  Discount? vendorDiscountAmount;
  Discount? discount;
  bool? paid;
  List<Log>? log;
  String? createdAt;
  String? updatedAt;
  int? iV;

  AllOrderModel(
      {this.customerDetails,
      this.deliveryDetails,
      this.sId,
      this.orderId,
      this.irctcOrderId,
      this.irctcOrderSubmit,
      this.resturant,
      this.mobile,
      this.orderSource,
      this.deliveryDate,
      this.bookingDate,
      this.status,
      this.orderItems,
      this.totalBase,
      this.totalYr,
      this.gst,
      this.yrGst,
      this.deliveryCharge,
      this.totalAmount,
      this.netPayable,
      this.paymentType,
      this.paymentMode,
      this.irctcDiscountAmount,
      this.vendorDiscountAmount,
      this.discount,
      this.paid,
      this.log,
      this.createdAt,
      this.updatedAt,
      this.iV});

  AllOrderModel.fromJson(Map<String, dynamic> json) {
    customerDetails = json['customerDetails'] != null
        ? new CustomerDetails.fromJson(json['customerDetails'])
        : null;
    deliveryDetails = json['deliveryDetails'] != null
        ? new DeliveryDetails.fromJson(json['deliveryDetails'])
        : null;
    sId = json['_id'];
    orderId = json['orderId'];
    irctcOrderId = json['irctcOrderId'];
    irctcOrderSubmit = json['irctcOrderSubmit'];
    resturant = json['resturant'];
    mobile = json['mobile'];
    orderSource = json['orderSource'];
    deliveryDate = json['deliveryDate'];
    bookingDate = json['bookingDate'];
    status = json['status'];
    if (json['orderItems'] != null) {
      orderItems = <OrderItems>[];
      json['orderItems'].forEach((v) {
        orderItems!.add(new OrderItems.fromJson(v));
      });
    }
    totalBase = json['totalBase'] != null
        ? new Discount.fromJson(json['totalBase'])
        : null;
    totalYr =
        json['totalYr'] != null ? new Discount.fromJson(json['totalYr']) : null;
    gst = json['gst'] != null ? new Discount.fromJson(json['gst']) : null;
    yrGst = json['yrGst'] != null ? new Discount.fromJson(json['yrGst']) : null;
    deliveryCharge = json['deliveryCharge'] != null
        ? new Discount.fromJson(json['deliveryCharge'])
        : null;
    totalAmount = json['totalAmount'] != null
        ? new Discount.fromJson(json['totalAmount'])
        : null;
    netPayable = json['netPayable'] != null
        ? new Discount.fromJson(json['netPayable'])
        : null;
    paymentType = json['paymentType'];
    paymentMode = json['paymentMode'];
    irctcDiscountAmount = json['irctcDiscountAmount'] != null
        ? new Discount.fromJson(json['irctcDiscountAmount'])
        : null;
    vendorDiscountAmount = json['vendorDiscountAmount'] != null
        ? new Discount.fromJson(json['vendorDiscountAmount'])
        : null;
    discount = json['discount'] != null
        ? new Discount.fromJson(json['discount'])
        : null;
    paid = json['paid'];
    if (json['log'] != null) {
      log = <Log>[];
      json['log'].forEach((v) {
        log!.add(new Log.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customerDetails != null) {
      data['customerDetails'] = this.customerDetails!.toJson();
    }
    if (this.deliveryDetails != null) {
      data['deliveryDetails'] = this.deliveryDetails!.toJson();
    }
    data['_id'] = this.sId;
    data['orderId'] = this.orderId;
    data['irctcOrderId'] = this.irctcOrderId;
    data['irctcOrderSubmit'] = this.irctcOrderSubmit;
    data['resturant'] = this.resturant;
    data['mobile'] = this.mobile;
    data['orderSource'] = this.orderSource;
    data['deliveryDate'] = this.deliveryDate;
    data['bookingDate'] = this.bookingDate;
    data['status'] = this.status;
    if (this.orderItems != null) {
      data['orderItems'] = this.orderItems!.map((v) => v.toJson()).toList();
    }
    if (this.totalBase != null) {
      data['totalBase'] = this.totalBase!.toJson();
    }
    if (this.totalYr != null) {
      data['totalYr'] = this.totalYr!.toJson();
    }
    if (this.gst != null) {
      data['gst'] = this.gst!.toJson();
    }
    if (this.yrGst != null) {
      data['yrGst'] = this.yrGst!.toJson();
    }
    if (this.deliveryCharge != null) {
      data['deliveryCharge'] = this.deliveryCharge!.toJson();
    }
    if (this.totalAmount != null) {
      data['totalAmount'] = this.totalAmount!.toJson();
    }
    if (this.netPayable != null) {
      data['netPayable'] = this.netPayable!.toJson();
    }
    data['paymentType'] = this.paymentType;
    data['paymentMode'] = this.paymentMode;
    if (this.irctcDiscountAmount != null) {
      data['irctcDiscountAmount'] = this.irctcDiscountAmount!.toJson();
    }
    if (this.vendorDiscountAmount != null) {
      data['vendorDiscountAmount'] = this.vendorDiscountAmount!.toJson();
    }
    if (this.discount != null) {
      data['discount'] = this.discount!.toJson();
    }
    data['paid'] = this.paid;
    if (this.log != null) {
      data['log'] = this.log!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class CustomerDetails {
  String? mobile;

  CustomerDetails({this.mobile});

  CustomerDetails.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    return data;
  }
}

class DeliveryDetails {
  String? passengerName;
  String? pnr;
  String? trainNo;
  String? trainName;
  String? station;
  String? stationCode;
  String? berth;
  String? coach;
  int? passengerCount;

  DeliveryDetails(
      {this.passengerName,
      this.pnr,
      this.trainNo,
      this.trainName,
      this.station,
      this.stationCode,
      this.berth,
      this.coach,
      this.passengerCount});

  DeliveryDetails.fromJson(Map<String, dynamic> json) {
    passengerName = json['passengerName'];
    pnr = json['pnr'];
    trainNo = json['trainNo'];
    trainName = json['trainName'];
    station = json['station'];
    stationCode = json['stationCode'];
    berth = json['berth'];
    coach = json['coach'];
    passengerCount = json['passengerCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['passengerName'] = this.passengerName;
    data['pnr'] = this.pnr;
    data['trainNo'] = this.trainNo;
    data['trainName'] = this.trainName;
    data['station'] = this.station;
    data['stationCode'] = this.stationCode;
    data['berth'] = this.berth;
    data['coach'] = this.coach;
    data['passengerCount'] = this.passengerCount;
    return data;
  }
}

class OrderItems {
  String? item;
  Discount? discount;
  List<Null>? customisations;
  String? itemName;
  String? description;
  bool? isVegetarian;
  int? quantity;
  Discount? yrRate;
  Discount? baseRate;
  Discount? taxRate;
  Discount? yrAmount;
  String? sId;

  OrderItems(
      {this.item,
      this.discount,
      this.customisations,
      this.itemName,
      this.description,
      this.isVegetarian,
      this.quantity,
      this.yrRate,
      this.baseRate,
      this.taxRate,
      this.yrAmount,
      this.sId});

  OrderItems.fromJson(Map<String, dynamic> json) {
    item = json['item'];
    discount = json['discount'] != null
        ? new Discount.fromJson(json['discount'])
        : null;
    customisations = json['customisations'];
    itemName = json['itemName'];
    description = json['description'];
    isVegetarian = json['isVegetarian'];
    quantity = json['quantity'];
    yrRate =
        json['yrRate'] != null ? new Discount.fromJson(json['yrRate']) : null;
    baseRate = json['baseRate'] != null
        ? new Discount.fromJson(json['baseRate'])
        : null;
    taxRate =
        json['taxRate'] != null ? new Discount.fromJson(json['taxRate']) : null;
    yrAmount = json['yrAmount'] != null
        ? new Discount.fromJson(json['yrAmount'])
        : null;
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item'] = this.item;
    if (this.discount != null) {
      data['discount'] = this.discount!.toJson();
    }
    data['customisations'] = this.customisations;

    data['itemName'] = this.itemName;
    data['description'] = this.description;
    data['isVegetarian'] = this.isVegetarian;
    data['quantity'] = this.quantity;
    if (this.yrRate != null) {
      data['yrRate'] = this.yrRate!.toJson();
    }
    if (this.baseRate != null) {
      data['baseRate'] = this.baseRate!.toJson();
    }
    if (this.taxRate != null) {
      data['taxRate'] = this.taxRate!.toJson();
    }
    if (this.yrAmount != null) {
      data['yrAmount'] = this.yrAmount!.toJson();
    }
    data['_id'] = this.sId;
    return data;
  }
}

class Discount {
  String? numberDecimal;

  Discount({this.numberDecimal});

  Discount.fromJson(Map<String, dynamic> json) {
    numberDecimal = json['$numberDecimal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$numberDecimal'] = this.numberDecimal;
    return data;
  }
}

class Log {
  String? status;
  String? updatedBy;
  String? sId;
  String? updatedAt;

  Log({this.status, this.updatedBy, this.sId, this.updatedAt});

  Log.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    updatedBy = json['updatedBy'];
    sId = json['_id'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['updatedBy'] = this.updatedBy;
    data['_id'] = this.sId;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
