// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectableOption _$SelectableOptionFromJson(Map<String, dynamic> json) {
  return _SelectableOption.fromJson(json);
}

/// @nodoc
mixin _$SelectableOption {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectableOptionCopyWith<SelectableOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableOptionCopyWith<$Res> {
  factory $SelectableOptionCopyWith(
          SelectableOption value, $Res Function(SelectableOption) then) =
      _$SelectableOptionCopyWithImpl<$Res, SelectableOption>;
  @useResult
  $Res call({int id, String name, String imagePath, bool isSelected});
}

/// @nodoc
class _$SelectableOptionCopyWithImpl<$Res, $Val extends SelectableOption>
    implements $SelectableOptionCopyWith<$Res> {
  _$SelectableOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectableOptionImplCopyWith<$Res>
    implements $SelectableOptionCopyWith<$Res> {
  factory _$$SelectableOptionImplCopyWith(_$SelectableOptionImpl value,
          $Res Function(_$SelectableOptionImpl) then) =
      __$$SelectableOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String imagePath, bool isSelected});
}

/// @nodoc
class __$$SelectableOptionImplCopyWithImpl<$Res>
    extends _$SelectableOptionCopyWithImpl<$Res, _$SelectableOptionImpl>
    implements _$$SelectableOptionImplCopyWith<$Res> {
  __$$SelectableOptionImplCopyWithImpl(_$SelectableOptionImpl _value,
      $Res Function(_$SelectableOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imagePath = null,
    Object? isSelected = null,
  }) {
    return _then(_$SelectableOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectableOptionImpl implements _SelectableOption {
  _$SelectableOptionImpl(
      {required this.id,
      required this.name,
      required this.imagePath,
      this.isSelected = false});

  factory _$SelectableOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectableOptionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imagePath;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'SelectableOption(id: $id, name: $name, imagePath: $imagePath, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imagePath, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectableOptionImplCopyWith<_$SelectableOptionImpl> get copyWith =>
      __$$SelectableOptionImplCopyWithImpl<_$SelectableOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectableOptionImplToJson(
      this,
    );
  }
}

abstract class _SelectableOption implements SelectableOption {
  factory _SelectableOption(
      {required final int id,
      required final String name,
      required final String imagePath,
      final bool isSelected}) = _$SelectableOptionImpl;

  factory _SelectableOption.fromJson(Map<String, dynamic> json) =
      _$SelectableOptionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imagePath;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$SelectableOptionImplCopyWith<_$SelectableOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
