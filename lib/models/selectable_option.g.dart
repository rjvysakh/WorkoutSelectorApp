// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectable_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectableOptionImpl _$$SelectableOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectableOptionImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imagePath: json['imagePath'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$SelectableOptionImplToJson(
        _$SelectableOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'isSelected': instance.isSelected,
    };
