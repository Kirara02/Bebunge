import 'package:freezed_annotation/freezed_annotation.dart';

part 'kartu_kuning_mod.freezed.dart';
part 'kartu_kuning_mod.g.dart';

@freezed
abstract class KartuKuningMod with _$KartuKuningMod {
  factory KartuKuningMod({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'user_id') final int? userId,
    @JsonKey(name: 'nik') final String? nik,
    @JsonKey(name: 'number') final String? number,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'reg_date') final String? regDate,
    @JsonKey(name: 'exp_date') final String? expDate,
    @JsonKey(name: 'birth_place') final String? birthPlace,
    @JsonKey(name: 'birth_date') final String? birthDate,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'subdistrict') final String? subdistrict,
    @JsonKey(name: 'village') final String? village,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'zip_code') final String? zipCode,
    @JsonKey(name: 'marital_status') final String? maritalStatus,
    @JsonKey(name: 'religion') final String? religion,
    @JsonKey(name: 'height') final int? height,
    @JsonKey(name: 'weight') final int? weight,
    @JsonKey(name: 'sim') final List<String>? sim,
    @JsonKey(name: 'education') final String? education,
    @JsonKey(name: 'graduation_year') final String? graduationYear,
    @JsonKey(name: 'scores') final String? scores,
    @JsonKey(name: 'major') final String? major,
    @JsonKey(name: 'skills') final List<String>? skills,
    @JsonKey(name: 'languages') final List<String>? languages,
    @JsonKey(name: 'occupations') final List<String>? occupations,
    @JsonKey(name: 'job_descriptions') final List<String>? jobDescriptions,
    @JsonKey(name: 'work_length') final List<String>? workLength,
    @JsonKey(name: 'companies') final List<String>? companies,
    @JsonKey(name: 'work_notes') final String? workNotes,
    @JsonKey(name: 'desired_position') final String? desiredPosition,
    @JsonKey(name: 'desired_location') final String? desiredLocation,
    @JsonKey(name: 'region') final String? region,
    @JsonKey(name: 'desired_wages') final String? desiredWages,
    @JsonKey(name: 'idcard_url') final String? idCardUrl,
    @JsonKey(name: 'certificate_url') final String? certificateUrl,
    @JsonKey(name: 'experience_url') final String? experienceUrl,
    @JsonKey(name: 'competency_url') final String? competencyUrl,
    @JsonKey(name: 'card_url') final String? cardUrl,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'complete_date') final String? completeDate,
    @JsonKey(name: 'pickup_date') final String? pickupDate,
    @JsonKey(name: 'pickup_by') final String? pickupBy,
    @JsonKey(name: 'pickup_status') final String? pickupStatus,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _KartuKuningMod;

  factory KartuKuningMod.fromJson(Map<String, dynamic> json) =>
      _$KartuKuningModFromJson(json);
}
