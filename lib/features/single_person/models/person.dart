import 'package:bloc_starter_test/features/persons/models/person_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'person.freezed.dart';

part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? title,
    String? id,
    @JsonKey(name: 'firstName')
    String? firstName,
    @JsonKey(name: 'lastName')
    String? lastName,
    String? picture,
    String? gender,
    String? email,
    DateTime? dateOfBirth,
    String? phone,
    Location? location,
    DateTime? registerDate,
    DateTime? updatedDate,
  }) = _Person;

  const Person._();

  factory Person.fromJson(Map<String, Object?>json) => _$PersonFromJson(json);
}
