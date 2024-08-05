// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomerDetails {
  String? mobile;

  CustomerDetails({
    this.mobile,
  });

  CustomerDetails copyWith({
    String? mobile,
  }) {
    return CustomerDetails(
      mobile: mobile ?? this.mobile,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mobile': mobile,
    };
  }

  factory CustomerDetails.fromMap(Map<String, dynamic> map) {
    return CustomerDetails(
      mobile: map['mobile'] ,
    );
  }
}
