

class DeliveryDetails {
  String? passengerName;
  String? pnr;
  String? trainNo;
  String? trainName;
  String? station;
  String? stationCode;
  String? berth;
  String? coach;
  String?passengerCount;
  DeliveryDetails({
    this.passengerName,
    this.pnr,
    this.trainNo,
    this.trainName,
    this.station,
    this.stationCode,
    this.berth,
    this.coach,
    this.passengerCount
  });

  
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passengerName': passengerName,
      'pnr': pnr,
      'trainNo': trainNo,
      'trainName': trainName,
      'station': station,
      'stationCode': stationCode,
      'berth': berth,
      'coach': coach,
      'passengerCount':passengerCount
    };
  }

  factory DeliveryDetails.fromMap(Map<String, dynamic> map) {
    return DeliveryDetails(
      passengerName: map['passengerName'] ,
      pnr: map['pnr'] ,
      trainNo: map['trainNo'] ,
      trainName: map['trainName'],
      station: map['station'] ,
      stationCode: map['stationCode'],
      berth: map['berth'] ,
      coach: map['coach'] ,
      passengerCount: map['passengerCount']
    );
  }
}
