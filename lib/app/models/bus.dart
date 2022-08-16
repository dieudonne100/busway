class BusModel {
  String? busId;
  String? travelsName;
  String? busNumber;
  String? date;
  String? from;
  String? to;
  String? busCondition;

  BusModel(
      {this.busId,
      this.travelsName,
      this.busNumber,
      this.date,
      this.from,
      this.to,
      this.busCondition});

  factory BusModel.fromMap(map) {
    return BusModel(
      busId: map['busid'],
    );
  }
}
