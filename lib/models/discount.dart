// ignore_for_file: public_member_api_docs, sort_constructors_first

class Discount {
  String? numberDecimal;
  Discount({
    this.numberDecimal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberDecimal': numberDecimal,
    };
  }

  factory Discount.fromMap(Map<String, dynamic> map) {
    return Discount(
      numberDecimal: map['numberDecimal'],
    );
  }
}
