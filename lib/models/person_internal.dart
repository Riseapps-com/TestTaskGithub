import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_internal.g.dart';

@JsonSerializable(explicitToJson: true)
class PersonInternal extends Equatable {
  final String name;
  final String email;
  final String date;

  PersonInternal(
      {@required this.name, @required this.email, @required this.date})
      : super([name, email, date]);

  factory PersonInternal.fromJson(Map<String, dynamic> json) =>
      _$PersonInternalFromJson(json);

  Map<String, dynamic> toJson() => _$PersonInternalToJson(this);

  @override
  String toString() {
    return 'PersonInternal{name: $name, email: $email, date: $date}';
  }
}
