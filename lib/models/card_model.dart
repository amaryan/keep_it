
import 'dart:core';


import 'package:json_annotation/json_annotation.dart';
part 'card_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CardModel {

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardModelToJson(this);

  CardModel({required this.title, this.tags});

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'tags')
  List<String>? tags;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CardModel && runtimeType == other.runtimeType &&
              title == other.title && tags == other.tags;

  @override
  int get hashCode => title.hashCode ^ tags.hashCode;


}