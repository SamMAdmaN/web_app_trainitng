// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonsInfo _$PersonsInfoFromJson(Map<String, dynamic> json) {
  return _PersonsInfo.fromJson(json);
}

/// @nodoc
mixin _$PersonsInfo {
  String? get id => throw _privateConstructorUsedError;
  dynamic get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsInfoCopyWith<PersonsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsInfoCopyWith<$Res> {
  factory $PersonsInfoCopyWith(
          PersonsInfo value, $Res Function(PersonsInfo) then) =
      _$PersonsInfoCopyWithImpl<$Res, PersonsInfo>;
  @useResult
  $Res call(
      {String? id,
      dynamic title,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      String? picture});
}

/// @nodoc
class _$PersonsInfoCopyWithImpl<$Res, $Val extends PersonsInfo>
    implements $PersonsInfoCopyWith<$Res> {
  _$PersonsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonsInfoCopyWith<$Res>
    implements $PersonsInfoCopyWith<$Res> {
  factory _$$_PersonsInfoCopyWith(
          _$_PersonsInfo value, $Res Function(_$_PersonsInfo) then) =
      __$$_PersonsInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      dynamic title,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      String? picture});
}

/// @nodoc
class __$$_PersonsInfoCopyWithImpl<$Res>
    extends _$PersonsInfoCopyWithImpl<$Res, _$_PersonsInfo>
    implements _$$_PersonsInfoCopyWith<$Res> {
  __$$_PersonsInfoCopyWithImpl(
      _$_PersonsInfo _value, $Res Function(_$_PersonsInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_PersonsInfo(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonsInfo extends _PersonsInfo {
  const _$_PersonsInfo(
      {required this.id,
      required this.title,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      required this.picture})
      : super._();

  factory _$_PersonsInfo.fromJson(Map<String, dynamic> json) =>
      _$$_PersonsInfoFromJson(json);

  @override
  final String? id;
  @override
  final dynamic title;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  final String? picture;

  @override
  String toString() {
    return 'PersonsInfo(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonsInfo &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(title), firstName, lastName, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonsInfoCopyWith<_$_PersonsInfo> get copyWith =>
      __$$_PersonsInfoCopyWithImpl<_$_PersonsInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonsInfoToJson(
      this,
    );
  }
}

abstract class _PersonsInfo extends PersonsInfo {
  const factory _PersonsInfo(
      {required final String? id,
      required final dynamic title,
      @JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'lastName') final String? lastName,
      required final String? picture}) = _$_PersonsInfo;
  const _PersonsInfo._() : super._();

  factory _PersonsInfo.fromJson(Map<String, dynamic> json) =
      _$_PersonsInfo.fromJson;

  @override
  String? get id;
  @override
  dynamic get title;
  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_PersonsInfoCopyWith<_$_PersonsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
