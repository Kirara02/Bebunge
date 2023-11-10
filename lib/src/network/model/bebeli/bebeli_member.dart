import 'package:freezed_annotation/freezed_annotation.dart';

part 'bebeli_member.freezed.dart';
part 'bebeli_member.g.dart';

@freezed
class BebeliMember with _$BebeliMember {
  factory BebeliMember({String? username, String? type, String? token}) =
      _BebeliMember;

  factory BebeliMember.fromJson(Map<String, dynamic> json) =>
      _$BebeliMemberFromJson(json);
}
