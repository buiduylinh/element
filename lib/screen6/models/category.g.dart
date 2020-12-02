// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryCategory _$StoryCategoryFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['id', 'title'],
      disallowNullValues: const ['id', 'title']);
  return StoryCategory(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String ?? '',
    createdAt: Converters.stringToDateTime(json['created_at'] as String),
    updatedAt: Converters.stringToDateTime(json['updated_at'] as String),
    status: json['status'] as int ?? 0,
    flagging: json['flagging'] as int ?? 0,
    stories: (json['category_list'] as List)
            ?.map((e) =>
                e == null ? null : Story.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
  );
}

Map<String, dynamic> _$StoryCategoryToJson(StoryCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  val['description'] = instance.description;
  val['created_at'] = instance.createdAt?.toIso8601String();
  val['updated_at'] = instance.updatedAt?.toIso8601String();
  val['status'] = instance.status;
  val['flagging'] = instance.flagging;
  val['category_list'] = instance.stories;
  return val;
}
