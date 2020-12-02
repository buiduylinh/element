import 'package:flutter_learning/screen6/utils/converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'story.g.dart';

@JsonSerializable()
class Story {
  @JsonKey(required: true, disallowNullValue: true)
  final int id;

  @JsonKey(required: true, disallowNullValue: true)
  final String title;

  @JsonKey(defaultValue: 0)
  final num sort;

  @JsonKey(
    name: 'category_type',
    defaultValue: [],
    fromJson: Converters.jsonStringToStringList,
  )
  final List<String> categoryTypes;

  @JsonKey(name: 'view_total', defaultValue: 0)
  final int totalViews;

  final String path;

  final String image;

  @JsonKey(name: 'story_description', defaultValue: '')
  final String storyDescription;

  @JsonKey(name: 'time_total')
  final int totalReadTime;

  @JsonKey(name: 'created_at', fromJson: Converters.stringToDateTime)
  final DateTime createdAt;

  @JsonKey(name: 'updated_at', fromJson: Converters.stringToDateTime)
  final DateTime updatedAt;

  @JsonKey(name: 'status_vip', fromJson: Converters.numberToBoolean)
  final bool isVip;

  final int type;

  final int status;

  final int flagging;

  const Story({
    this.id,
    this.title,
    this.sort,
    this.categoryTypes,
    this.totalViews,
    this.path,
    this.image,
    this.storyDescription,
    this.totalReadTime,
    this.createdAt,
    this.updatedAt,
    this.isVip,
    this.type,
    this.status,
    this.flagging,
  });

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryToJson(this);
}
