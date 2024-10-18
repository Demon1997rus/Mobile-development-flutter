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
    CharactersDataDto();

CharacterAttributesDataDto _$CharacterAttributesDataDtoFromJson(
        Map<String, dynamic> json) =>
    CharacterAttributesDataDto();
