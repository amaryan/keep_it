
import 'package:json_annotation/json_annotation.dart';
import 'package:trello2/models/card_model.dart';

part 'card_section_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CardSectionModel{

  factory CardSectionModel.fromJson(Map<String, dynamic> json) => _$CardSectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardSectionModelToJson(this);

  CardSectionModel({required this.title, this.cards});

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'cards')
  List<CardModel>? cards;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardSectionModel &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          cards == other.cards;

  @override
  int get hashCode => title.hashCode ^ cards.hashCode;
}