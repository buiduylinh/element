import 'package:json_annotation/json_annotation.dart';

part 'a_new_model.g.dart';

@JsonSerializable()
class ANewModel {
  final String icon;
  final String name;

  @JsonKey(name: 'desc')
  final String description;

  const ANewModel({this.icon, this.name, this.description});


  factory ANewModel.fromJson(Map<String, dynamic> json) => _$ANewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ANewModelToJson(this);
}