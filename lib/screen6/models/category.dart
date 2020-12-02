import 'package:flutter_learning/screen6/models/story.dart';
import 'package:flutter_learning/screen6/utils/converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class StoryCategory {
  @JsonKey(required: true, disallowNullValue: true)
  final int id;

  @JsonKey(required: true, disallowNullValue: true)
  final String title;

  @JsonKey(defaultValue: '')
  final String description;

  @JsonKey(name: 'created_at', fromJson: Converters.stringToDateTime)
  final DateTime createdAt;

  @JsonKey(name: 'updated_at', fromJson: Converters.stringToDateTime)
  final DateTime updatedAt;

  @JsonKey(defaultValue: 0)
  final int status;

  @JsonKey(defaultValue: 0)
  final int flagging;

  @JsonKey(name: 'category_list', defaultValue: [])
  final List<Story> stories;

  const StoryCategory({
    this.id,
    this.title,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.flagging,
    this.stories,
  });

  factory StoryCategory.fromJson(Map<String, dynamic> json) =>
      _$StoryCategoryFromJson(json);
  Map<String, dynamic> toJson() => _$StoryCategoryToJson(this);
}
