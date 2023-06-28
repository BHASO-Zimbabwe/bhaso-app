import 'package:json_annotation/json_annotation.dart';
part 'medication.g.dart';
@JsonSerializable()
class Medication{
  String? medicationId;
  String? userId;
  String? medicationName;
  String? color;
  String? medType;
  String? prescription;
  List<Map>? time;
  int? frequency;
  int? often;
  int? inStock;

  Medication({ this.medicationId,this.userId, this.medicationName,this.color,this.medType,  this.prescription,  this.time,  this.frequency,  this.often, this.inStock});

  factory Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);

  Map<String, dynamic> toJson() => _$MedicationToJson(this);


}