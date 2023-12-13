// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameOptions _$GameOptionsFromJson(Map<String, dynamic> json) => GameOptions(
      interfaceSoundsGain:
          (json['interfaceSoundsGain'] as num?)?.toDouble() ?? 0.7,
      musicGain: (json['musicGain'] as num?)?.toDouble() ?? 0.7,
      ambiancesGain: (json['ambiancesGain'] as num?)?.toDouble() ?? 0.7,
      footstepSoundsGain:
          (json['footstepSoundsGain'] as num?)?.toDouble() ?? 0.7,
      pannerStrategy: $enumDecodeNullable(
              _$PannerStrategyEnumMap, json['pannerStrategy']) ??
          PannerStrategy.stereo,
    );

Map<String, dynamic> _$GameOptionsToJson(GameOptions instance) =>
    <String, dynamic>{
      'interfaceSoundsGain': instance.interfaceSoundsGain,
      'musicGain': instance.musicGain,
      'ambiancesGain': instance.ambiancesGain,
      'footstepSoundsGain': instance.footstepSoundsGain,
      'pannerStrategy': _$PannerStrategyEnumMap[instance.pannerStrategy]!,
    };

const _$PannerStrategyEnumMap = {
  PannerStrategy.delegate: 'delegate',
  PannerStrategy.hrtf: 'hrtf',
  PannerStrategy.stereo: 'stereo',
  PannerStrategy.count: 'count',
};
