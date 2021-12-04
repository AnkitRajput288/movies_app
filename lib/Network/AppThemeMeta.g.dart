// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppThemeMeta _$$_AppThemeMetaFromJson(Map<String, dynamic> json) =>
    _$_AppThemeMeta(
      _$enumDecode(
          _$EnumAppThemeParentBackgroundEnumMap, json['enumParentBackground']),
      _$enumDecode(_$EnumAppThemeChildColorEnumMap, json['enumChildColor']),
      _$enumDecode(_$EnumAppThemeFontsEnumMap, json['enumFont']),
      _$enumDecode(_$EnumAppThemeFontsSizeEnumMap, json['enumFontSize']),
    );

Map<String, dynamic> _$$_AppThemeMetaToJson(_$_AppThemeMeta instance) =>
    <String, dynamic>{
      'enumParentBackground':
          _$EnumAppThemeParentBackgroundEnumMap[instance.enumParentBackground],
      'enumChildColor':
          _$EnumAppThemeChildColorEnumMap[instance.enumChildColor],
      'enumFont': _$EnumAppThemeFontsEnumMap[instance.enumFont],
      'enumFontSize': _$EnumAppThemeFontsSizeEnumMap[instance.enumFontSize],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$EnumAppThemeParentBackgroundEnumMap = {
  EnumAppThemeParentBackground.LIGHT: 'LIGHT',
  EnumAppThemeParentBackground.DIM: 'DIM',
  EnumAppThemeParentBackground.DARK: 'DARK',
};

const _$EnumAppThemeChildColorEnumMap = {
  EnumAppThemeChildColor.SKY_BLUE: 'SKY_BLUE',
  EnumAppThemeChildColor.DARK_YELLOW: 'DARK_YELLOW',
  EnumAppThemeChildColor.FLOWER_RED: 'FLOWER_RED',
  EnumAppThemeChildColor.OCTOPUS_VIOLET: 'OCTOPUS_VIOLET',
  EnumAppThemeChildColor.FIRE_ORANGE: 'FIRE_ORANGE',
  EnumAppThemeChildColor.GUAVA_GREEN: 'GUAVA_GREEN',
};

const _$EnumAppThemeFontsEnumMap = {
  EnumAppThemeFonts.ABEL: 'ABEL',
  EnumAppThemeFonts.ACTOR: 'ACTOR',
  EnumAppThemeFonts.BILBO: 'BILBO',
  EnumAppThemeFonts.HIND: 'HIND',
  EnumAppThemeFonts.LATO: 'LATO',
  EnumAppThemeFonts.ROBOTO: 'ROBOTO',
  EnumAppThemeFonts.ZEYADA: 'ZEYADA',
};

const _$EnumAppThemeFontsSizeEnumMap = {
  EnumAppThemeFontsSize.D: 'D',
  EnumAppThemeFontsSize.L: 'L',
  EnumAppThemeFontsSize.XL: 'XL',
  EnumAppThemeFontsSize.XXL: 'XXL',
  EnumAppThemeFontsSize.XXXL: 'XXXL',
};
