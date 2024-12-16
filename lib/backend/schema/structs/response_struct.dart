// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResponseStruct extends BaseStruct {
  ResponseStruct({
    int? profileStatus,
    ProfileInfoStruct? profileInfo,
  })  : _profileStatus = profileStatus,
        _profileInfo = profileInfo;

  // "profile_status" field.
  int? _profileStatus;
  int get profileStatus => _profileStatus ?? 0;
  set profileStatus(int? val) => _profileStatus = val;

  void incrementProfileStatus(int amount) =>
      profileStatus = profileStatus + amount;

  bool hasProfileStatus() => _profileStatus != null;

  // "profile_info" field.
  ProfileInfoStruct? _profileInfo;
  ProfileInfoStruct get profileInfo => _profileInfo ?? ProfileInfoStruct();
  set profileInfo(ProfileInfoStruct? val) => _profileInfo = val;

  void updateProfileInfo(Function(ProfileInfoStruct) updateFn) {
    updateFn(_profileInfo ??= ProfileInfoStruct());
  }

  bool hasProfileInfo() => _profileInfo != null;

  static ResponseStruct fromMap(Map<String, dynamic> data) => ResponseStruct(
        profileStatus: castToType<int>(data['profile_status']),
        profileInfo: data['profile_info'] is ProfileInfoStruct
            ? data['profile_info']
            : ProfileInfoStruct.maybeFromMap(data['profile_info']),
      );

  static ResponseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ResponseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'profile_status': _profileStatus,
        'profile_info': _profileInfo?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'profile_status': serializeParam(
          _profileStatus,
          ParamType.int,
        ),
        'profile_info': serializeParam(
          _profileInfo,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResponseStruct(
        profileStatus: deserializeParam(
          data['profile_status'],
          ParamType.int,
          false,
        ),
        profileInfo: deserializeStructParam(
          data['profile_info'],
          ParamType.DataStruct,
          false,
          structBuilder: ProfileInfoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResponseStruct &&
        profileStatus == other.profileStatus &&
        profileInfo == other.profileInfo;
  }

  @override
  int get hashCode => const ListEquality().hash([profileStatus, profileInfo]);
}

ResponseStruct createResponseStruct({
  int? profileStatus,
  ProfileInfoStruct? profileInfo,
}) =>
    ResponseStruct(
      profileStatus: profileStatus,
      profileInfo: profileInfo ?? ProfileInfoStruct(),
    );
