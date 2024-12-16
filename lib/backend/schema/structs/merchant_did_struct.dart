// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchantDidStruct extends BaseStruct {
  MerchantDidStruct({
    List<TopupStruct>? topup,
    List<String>? upgrade,
    KickstartStruct? kickstart,
    List<TidStruct>? tid,
  })  : _topup = topup,
        _upgrade = upgrade,
        _kickstart = kickstart,
        _tid = tid;

  // "topup" field.
  List<TopupStruct>? _topup;
  List<TopupStruct> get topup => _topup ?? const [];
  set topup(List<TopupStruct>? val) => _topup = val;

  void updateTopup(Function(List<TopupStruct>) updateFn) {
    updateFn(_topup ??= []);
  }

  bool hasTopup() => _topup != null;

  // "upgrade" field.
  List<String>? _upgrade;
  List<String> get upgrade => _upgrade ?? const [];
  set upgrade(List<String>? val) => _upgrade = val;

  void updateUpgrade(Function(List<String>) updateFn) {
    updateFn(_upgrade ??= []);
  }

  bool hasUpgrade() => _upgrade != null;

  // "kickstart" field.
  KickstartStruct? _kickstart;
  KickstartStruct get kickstart => _kickstart ?? KickstartStruct();
  set kickstart(KickstartStruct? val) => _kickstart = val;

  void updateKickstart(Function(KickstartStruct) updateFn) {
    updateFn(_kickstart ??= KickstartStruct());
  }

  bool hasKickstart() => _kickstart != null;

  // "tid" field.
  List<TidStruct>? _tid;
  List<TidStruct> get tid => _tid ?? const [];
  set tid(List<TidStruct>? val) => _tid = val;

  void updateTid(Function(List<TidStruct>) updateFn) {
    updateFn(_tid ??= []);
  }

  bool hasTid() => _tid != null;

  static MerchantDidStruct fromMap(Map<String, dynamic> data) =>
      MerchantDidStruct(
        topup: getStructList(
          data['topup'],
          TopupStruct.fromMap,
        ),
        upgrade: getDataList(data['upgrade']),
        kickstart: data['kickstart'] is KickstartStruct
            ? data['kickstart']
            : KickstartStruct.maybeFromMap(data['kickstart']),
        tid: getStructList(
          data['tid'],
          TidStruct.fromMap,
        ),
      );

  static MerchantDidStruct? maybeFromMap(dynamic data) => data is Map
      ? MerchantDidStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'topup': _topup?.map((e) => e.toMap()).toList(),
        'upgrade': _upgrade,
        'kickstart': _kickstart?.toMap(),
        'tid': _tid?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'topup': serializeParam(
          _topup,
          ParamType.DataStruct,
          isList: true,
        ),
        'upgrade': serializeParam(
          _upgrade,
          ParamType.String,
          isList: true,
        ),
        'kickstart': serializeParam(
          _kickstart,
          ParamType.DataStruct,
        ),
        'tid': serializeParam(
          _tid,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MerchantDidStruct fromSerializableMap(Map<String, dynamic> data) =>
      MerchantDidStruct(
        topup: deserializeStructParam<TopupStruct>(
          data['topup'],
          ParamType.DataStruct,
          true,
          structBuilder: TopupStruct.fromSerializableMap,
        ),
        upgrade: deserializeParam<String>(
          data['upgrade'],
          ParamType.String,
          true,
        ),
        kickstart: deserializeStructParam(
          data['kickstart'],
          ParamType.DataStruct,
          false,
          structBuilder: KickstartStruct.fromSerializableMap,
        ),
        tid: deserializeStructParam<TidStruct>(
          data['tid'],
          ParamType.DataStruct,
          true,
          structBuilder: TidStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MerchantDidStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MerchantDidStruct &&
        listEquality.equals(topup, other.topup) &&
        listEquality.equals(upgrade, other.upgrade) &&
        kickstart == other.kickstart &&
        listEquality.equals(tid, other.tid);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([topup, upgrade, kickstart, tid]);
}

MerchantDidStruct createMerchantDidStruct({
  KickstartStruct? kickstart,
}) =>
    MerchantDidStruct(
      kickstart: kickstart ?? KickstartStruct(),
    );
