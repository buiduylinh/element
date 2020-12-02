// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Story _$StoryFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['id', 'title'],
      disallowNullValues: const ['id', 'title']);
  return Story(
    id: json['id'] as int,
    title: json['title'] as String,
    sort: json['sort'] as num ?? 0,
    categoryTypes:
        Converters.jsonStringToStringList(json['category_type'] as String) ??
            [],
    totalViews: json['view_total'] as int ?? 0,
    path: json['path'] as String,
    image: json['image'] as String,
    storyDescription: json['story_description'] as String ?? '',
    totalReadTime: json['time_total'] as int,
    createdAt: Converters.stringToDateTime(json['created_at'] as String),
    updatedAt: Converters.stringToDateTime(json['updated_at'] as String),
    isVip: Converters.numberToBoolean(json['status_vip'] as num),
    type: json['type'] as int,
    status: json['status'] as int,
    flagging: json['flagging'] as int,
  );
}

Map<String, dynamic> _$StoryToJson(Story instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  val['sort'] = instance.sort;
  val['category_type'] = instance.categoryTypes;
  val['view_total'] = instance.totalViews;
  val['path'] = instance.path;
  val['image'] = instance.image;
  val['story_description'] = instance.storyDescription;
  val['time_total'] = instance.totalReadTime;
  val['created_at'] = instance.createdAt?.toIso8601String();
  val['updated_at'] = instance.updatedAt?.toIso8601String();
  val['status_vip'] = instance.isVip;
  val['type'] = instance.type;
  val['status'] = instance.status;
  val['flagging'] = instance.flagging;
  return val;
}
