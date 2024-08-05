// ignore_for_file: public_member_api_docs, sort_constructors_first



class Log {
  String? status;
  String? updatedBy;
  String? sId;
  String? updatedAt;
  Log({
    this.status,
    this.updatedBy,
    this.sId,
    this.updatedAt,
  });

 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'updatedBy': updatedBy,
      '_id': sId,
      'updatedAt': updatedAt,
    };
  }

  factory Log.fromMap(Map<String, dynamic> map) {
    return Log(
      status: map['status'] ,
      updatedBy: map['updatedBy'] ,
      sId: map['_id'] ,
      updatedAt: map['updatedAt'] ,
    );
  }

}
