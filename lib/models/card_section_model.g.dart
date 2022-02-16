// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardSectionModel _$CardSectionModelFromJson(Map<String, dynamic> json) {
  return CardSectionModel(
    title: json['title'] as String,
    cards: (json['cards'] as List<dynamic>?)
        ?.map((e) => CardModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CardSectionModelToJson(CardSectionModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cards': instance.cards?.map((e) => e.toJson()).toList(),
    };
