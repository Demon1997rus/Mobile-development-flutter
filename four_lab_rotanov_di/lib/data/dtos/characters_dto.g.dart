// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersDto _$CharactersDtoFromJson(Map<String, dynamic> json) =>
    CharactersDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CharactersDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CharactersDataDto _$CharactersDataDtoFromJson(Map<String, dynamic> json) =>
    CharactersDataDto(
      json['id'] as String?,
      json['type'] as String?,
      json['attributes'] == null
          ? null
          : CharacterAttributesDataDto.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

CharacterAttributesDataDto _$CharacterAttributesDataDtoFromJson(
        Map<String, dynamic> json) =>
    CharacterAttributesDataDto(
      json['name'] as String?,
      json['born'] as String?,
      json['died'] as String?,
      json['image'] as String?,
    );
