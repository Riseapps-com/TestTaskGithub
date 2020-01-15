import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verification.g.dart';

@JsonSerializable(explicitToJson: true)
class Verification extends Equatable {
  final bool verified;
  final String reason;
  final String signature;
  final String payload;

  Verification({this.verified, this.reason, this.signature, this.payload})
      : super([verified, reason, signature, payload]);

  factory Verification.fromJson(Map<String, dynamic> json) => _$VerificationFromJson(json);

  Map<String, dynamic> toJson() => _$VerificationToJson(this);

  @override
  String toString() {
    return 'Verification{verified: $verified, reason: $reason, signature: $signature, payload: $payload}';
  }
}
