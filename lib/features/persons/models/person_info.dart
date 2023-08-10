import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_info.g.dart';

part 'person_info.freezed.dart';

@freezed
class PersonsInfo with _$PersonsInfo {
  const factory PersonsInfo({
    required String? id,
    required dynamic title,
    @JsonKey(name: 'firstName')
    String? firstName,
    @JsonKey(name: 'lastName')
    String? lastName,
    required String? picture,

  }) = _PersonsInfo;

  const PersonsInfo._();

  factory PersonsInfo.fromJson(Map<String, Object?>json) =>
      _$PersonsInfoFromJson(json);

}
