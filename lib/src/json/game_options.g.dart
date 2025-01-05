// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameOptions _$GameOptionsFromJson(Map<String, dynamic> json) => GameOptions(
      masterVolume: (json['masterVolume'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$GameOptionsToJson(GameOptions instance) =>
    <String, dynamic>{
      'masterVolume': instance.masterVolume,
    };
