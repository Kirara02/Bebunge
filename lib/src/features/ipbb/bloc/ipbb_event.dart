part of 'ipbb_bloc.dart';

@freezed
class IpbbEvent with _$IpbbEvent {
  const factory IpbbEvent.started({String? nopNumber}) = _Started;
}
