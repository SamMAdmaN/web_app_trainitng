import 'package:bloc_starter_test/features/persons/models/person_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'persons.freezed.dart';

part 'persons.g.dart';

@freezed
class Persons with _$Persons {
  const factory Persons({
    @JsonKey(name: 'data')
    required List<PersonsInfo>? personsInfo,
    int? total,
    int? page,
    int? limit,
  }) = _Persons;
  const Persons._();

  factory Persons.fromJson(Map<String, dynamic> json) => _$PersonsFromJson(json);
}
