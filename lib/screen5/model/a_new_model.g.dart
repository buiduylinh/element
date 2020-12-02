// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ANewModel _$ANewModelFromJson(Map<String, dynamic> json) {
  return ANewModel(
    icon: json['icon'] as String,
    name: json['name'] as String,
    description: json['desc'] as String,
  );
}

Map<String, dynamic> _$ANewModelToJson(ANewModel instance) => <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'desc': instance.description,
    };
