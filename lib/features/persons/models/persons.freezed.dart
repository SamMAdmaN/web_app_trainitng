// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Persons _$PersonsFromJson(Map<String, dynamic> json) {
  return _Persons.fromJson(json);
}

/// @nodoc
mixin _$Persons {
  @JsonKey(name: 'data')
  List<PersonsInfo>? get personsInfo => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsCopyWith<Persons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsCopyWith<$Res> {
  factory $PersonsCopyWith(Persons value, $Res Function(Persons) then) =
      _$PersonsCopyWithImpl<$Res, Persons>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<PersonsInfo>? personsInfo,
      int? total,
      int? page,
      int? limit});
}

/// @nodoc
class _$PersonsCopyWithImpl<$Res, $Val extends Persons>
    implements $PersonsCopyWith<$Res> {
  _$PersonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personsInfo = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      personsInfo: freezed == personsInfo
          ? _value.personsInfo
          : personsInfo // ignore: cast_nullable_to_non_nullable
              as List<PersonsInfo>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonsCopyWith<$Res> implements $PersonsCopyWith<$Res> {
  factory _$$_PersonsCopyWith(
          _$_Persons value, $Res Function(_$_Persons) then) =
      __$$_PersonsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<PersonsInfo>? personsInfo,
      int? total,
      int? page,
      int? limit});
}

/// @nodoc
class __$$_PersonsCopyWithImpl<$Res>
    extends _$PersonsCopyWithImpl<$Res, _$_Persons>
    implements _$$_PersonsCopyWith<$Res> {
  __$$_PersonsCopyWithImpl(_$_Persons _value, $Res Function(_$_Persons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personsInfo = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_Persons(
      personsInfo: freezed == personsInfo
          ? _value._personsInfo
          : personsInfo // ignore: cast_nullable_to_non_nullable
              as List<PersonsInfo>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Persons extends _Persons {
  const _$_Persons(
      {@JsonKey(name: 'data') required final List<PersonsInfo>? personsInfo,
      this.total,
      this.page,
      this.limit})
      : _personsInfo = personsInfo,
        super._();

  factory _$_Persons.fromJson(Map<String, dynamic> json) =>
      _$$_PersonsFromJson(json);

  final List<PersonsInfo>? _personsInfo;
  @override
  @JsonKey(name: 'data')
  List<PersonsInfo>? get personsInfo {
    final value = _personsInfo;
    if (value == null) return null;
    if (_personsInfo is EqualUnmodifiableListView) return _personsInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'Persons(personsInfo: $personsInfo, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Persons &&
            const DeepCollectionEquality()
                .equals(other._personsInfo, _personsInfo) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_personsInfo), total, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonsCopyWith<_$_Persons> get copyWith =>
      __$$_PersonsCopyWithImpl<_$_Persons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonsToJson(
      this,
    );
  }
}

abstract class _Persons extends Persons {
  const factory _Persons(
      {@JsonKey(name: 'data') required final List<PersonsInfo>? personsInfo,
      final int? total,
      final int? page,
      final int? limit}) = _$_Persons;
  const _Persons._() : super._();

  factory _Persons.fromJson(Map<String, dynamic> json) = _$_Persons.fromJson;

  @override
  @JsonKey(name: 'data')
  List<PersonsInfo>? get personsInfo;
  @override
  int? get total;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PersonsCopyWith<_$_Persons> get copyWith =>
      throw _privateConstructorUsedError;
}
