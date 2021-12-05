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
  EnumAppThemeParentBackground.light: 'LIGHT',
  EnumAppThemeParentBackground.din: 'DIM',
  EnumAppThemeParentBackground.dark: 'DARK',
};

const _$EnumAppThemeChildColorEnumMap = {
  EnumAppThemeChildColor.skyBlue: 'SKY_BLUE',
  EnumAppThemeChildColor.darkYellow: 'DARK_YELLOW',
  EnumAppThemeChildColor.flowerRed: 'FLOWER_RED',
  EnumAppThemeChildColor.octopusViolet: 'OCTOPUS_VIOLET',
  EnumAppThemeChildColor.fireOrange: 'FIRE_ORANGE',
  EnumAppThemeChildColor.guavaGreen: 'GUAVA_GREEN',
};

const _$EnumAppThemeFontsEnumMap = {
  EnumAppThemeFonts.abel: 'ABEL',
  EnumAppThemeFonts.actor: 'ACTOR',
  EnumAppThemeFonts.bilbo: 'BILBO',
  EnumAppThemeFonts.hindi: 'HIND',
  EnumAppThemeFonts.lato: 'LATO',
  EnumAppThemeFonts.roboto: 'ROBOTO',
  EnumAppThemeFonts.zeyada: 'ZEYADA',
};

const _$EnumAppThemeFontsSizeEnumMap = {
  EnumAppThemeFontsSize.d: 'D',
  EnumAppThemeFontsSize.l: 'L',
  EnumAppThemeFontsSize.xl: 'XL',
  EnumAppThemeFontsSize.xxl: 'XXL',
  EnumAppThemeFontsSize.xxxl: 'XXXL',
};
