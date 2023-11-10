// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kartu_kuning_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KartuKuningMod _$$_KartuKuningModFromJson(Map<String, dynamic> json) =>
    _$_KartuKuningMod(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      nik: json['nik'] as String?,
      number: json['number'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      regDate: json['reg_date'] as String?,
      expDate: json['exp_date'] as String?,
      birthPlace: json['birth_place'] as String?,
      birthDate: json['birth_date'] as String?,
      gender: json['gender'] as String?,
      subdistrict: json['subdistrict'] as String?,
      village: json['village'] as String?,
      address: json['address'] as String?,
      zipCode: json['zip_code'] as String?,
      maritalStatus: json['marital_status'] as String?,
      religion: json['religion'] as String?,
      height: json['height'] as int?,
      weight: json['weight'] as int?,
      sim: (json['sim'] as List<dynamic>?)?.map((e) => e as String).toList(),
      education: json['education'] as String?,
      graduationYear: json['graduation_year'] as String?,
      scores: json['scores'] as String?,
      major: json['major'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      occupations: (json['occupations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobDescriptions: (json['job_descriptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workLength: (json['work_length'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workNotes: json['work_notes'] as String?,
      desiredPosition: json['desired_position'] as String?,
      desiredLocation: json['desired_location'] as String?,
      region: json['region'] as String?,
      desiredWages: json['desired_wages'] as String?,
      idCardUrl: json['idcard_url'] as String?,
      certificateUrl: json['certificate_url'] as String?,
      experienceUrl: json['experience_url'] as String?,
      competencyUrl: json['competency_url'] as String?,
      cardUrl: json['card_url'] as String?,
      status: json['status'] as String?,
      completeDate: json['complete_date'] as String?,
      pickupDate: json['pickup_date'] as String?,
      pickupBy: json['pickup_by'] as String?,
      pickupStatus: json['pickup_status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_KartuKuningModToJson(_$_KartuKuningMod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'nik': instance.nik,
      'number': instance.number,
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
      'reg_date': instance.regDate,
      'exp_date': instance.expDate,
      'birth_place': instance.birthPlace,
      'birth_date': instance.birthDate,
      'gender': instance.gender,
      'subdistrict': instance.subdistrict,
      'village': instance.village,
      'address': instance.address,
      'zip_code': instance.zipCode,
      'marital_status': instance.maritalStatus,
      'religion': instance.religion,
      'height': instance.height,
      'weight': instance.weight,
      'sim': instance.sim,
      'education': instance.education,
      'graduation_year': instance.graduationYear,
      'scores': instance.scores,
      'major': instance.major,
      'skills': instance.skills,
      'languages': instance.languages,
      'occupations': instance.occupations,
      'job_descriptions': instance.jobDescriptions,
      'work_length': instance.workLength,
      'companies': instance.companies,
      'work_notes': instance.workNotes,
      'desired_position': instance.desiredPosition,
      'desired_location': instance.desiredLocation,
      'region': instance.region,
      'desired_wages': instance.desiredWages,
      'idcard_url': instance.idCardUrl,
      'certificate_url': instance.certificateUrl,
      'experience_url': instance.experienceUrl,
      'competency_url': instance.competencyUrl,
      'card_url': instance.cardUrl,
      'status': instance.status,
      'complete_date': instance.completeDate,
      'pickup_date': instance.pickupDate,
      'pickup_by': instance.pickupBy,
      'pickup_status': instance.pickupStatus,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
