import 'package:freezed_annotation/freezed_annotation.dart';

part 'azan_timing.freezed.dart';
part 'azan_timing.g.dart';

@freezed
class AzanTiming with _$AzanTiming {
  const factory AzanTiming(
      {@JsonKey(name: 'Fajr') final String? fajr,
      @JsonKey(name: 'Sunrise') final String? sunrise,
      @JsonKey(name: 'Dhuhr') final String? dhuhr,
      @JsonKey(name: 'Asr') final String? asr,
      @JsonKey(name: 'Sunset') final String? sunset,
      @JsonKey(name: 'Maghrib') final String? maghrib,
      @JsonKey(name: 'Isha') final String? isha,
      @JsonKey(name: 'Imsak') final String? imsak,
      @JsonKey(name: 'Midnight') final String? midnight,
      @JsonKey(name: 'Firstthird') final String? firstthird,
      @JsonKey(name: 'Lastthird') final String? lastthird}) = _AzanTiming;

  factory AzanTiming.fromJson(Map<String, dynamic> json) =>
      _$AzanTimingFromJson(json);
}
