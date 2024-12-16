// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileInfoStruct extends BaseStruct {
  ProfileInfoStruct({
    String? merchantId,
    String? fullName,
    String? houseFlatBlockno,
    String? apartmentRoadArea,
    String? city,
    String? state,
    int? pincode,
    String? shopName,
    String? registeredBusinessName,
    String? emailId,
    String? category,
    int? status,
    String? type,
    List<String>? extension,
    String? turnoverType,
    String? pancardNumber,
    SubCategoryStruct? subCategory,
    int? notification,
    int? allowTokenTransaction,
    int? rating,
    int? billingStatus,
    String? merchantP2m,
    String? merchantP2pmg,
  })  : _merchantId = merchantId,
        _fullName = fullName,
        _houseFlatBlockno = houseFlatBlockno,
        _apartmentRoadArea = apartmentRoadArea,
        _city = city,
        _state = state,
        _pincode = pincode,
        _shopName = shopName,
        _registeredBusinessName = registeredBusinessName,
        _emailId = emailId,
        _category = category,
        _status = status,
        _type = type,
        _extension = extension,
        _turnoverType = turnoverType,
        _pancardNumber = pancardNumber,
        _subCategory = subCategory,
        _notification = notification,
        _allowTokenTransaction = allowTokenTransaction,
        _rating = rating,
        _billingStatus = billingStatus,
        _merchantP2m = merchantP2m,
        _merchantP2pmg = merchantP2pmg;

  // "merchant_id" field.
  String? _merchantId;
  String get merchantId => _merchantId ?? '';
  set merchantId(String? val) => _merchantId = val;

  bool hasMerchantId() => _merchantId != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "house_flat_blockno" field.
  String? _houseFlatBlockno;
  String get houseFlatBlockno => _houseFlatBlockno ?? '';
  set houseFlatBlockno(String? val) => _houseFlatBlockno = val;

  bool hasHouseFlatBlockno() => _houseFlatBlockno != null;

  // "apartment_road_area" field.
  String? _apartmentRoadArea;
  String get apartmentRoadArea => _apartmentRoadArea ?? '';
  set apartmentRoadArea(String? val) => _apartmentRoadArea = val;

  bool hasApartmentRoadArea() => _apartmentRoadArea != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "pincode" field.
  int? _pincode;
  int get pincode => _pincode ?? 0;
  set pincode(int? val) => _pincode = val;

  void incrementPincode(int amount) => pincode = pincode + amount;

  bool hasPincode() => _pincode != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  set shopName(String? val) => _shopName = val;

  bool hasShopName() => _shopName != null;

  // "registered_business_name" field.
  String? _registeredBusinessName;
  String get registeredBusinessName => _registeredBusinessName ?? '';
  set registeredBusinessName(String? val) => _registeredBusinessName = val;

  bool hasRegisteredBusinessName() => _registeredBusinessName != null;

  // "email_id" field.
  String? _emailId;
  String get emailId => _emailId ?? '';
  set emailId(String? val) => _emailId = val;

  bool hasEmailId() => _emailId != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "extension" field.
  List<String>? _extension;
  List<String> get extension => _extension ?? const [];
  set extension(List<String>? val) => _extension = val;

  void updateExtension(Function(List<String>) updateFn) {
    updateFn(_extension ??= []);
  }

  bool hasExtension() => _extension != null;

  // "turnover_type" field.
  String? _turnoverType;
  String get turnoverType => _turnoverType ?? '';
  set turnoverType(String? val) => _turnoverType = val;

  bool hasTurnoverType() => _turnoverType != null;

  // "pancard_number" field.
  String? _pancardNumber;
  String get pancardNumber => _pancardNumber ?? '';
  set pancardNumber(String? val) => _pancardNumber = val;

  bool hasPancardNumber() => _pancardNumber != null;

  // "sub_category" field.
  SubCategoryStruct? _subCategory;
  SubCategoryStruct get subCategory => _subCategory ?? SubCategoryStruct();
  set subCategory(SubCategoryStruct? val) => _subCategory = val;

  void updateSubCategory(Function(SubCategoryStruct) updateFn) {
    updateFn(_subCategory ??= SubCategoryStruct());
  }

  bool hasSubCategory() => _subCategory != null;

  // "notification" field.
  int? _notification;
  int get notification => _notification ?? 0;
  set notification(int? val) => _notification = val;

  void incrementNotification(int amount) =>
      notification = notification + amount;

  bool hasNotification() => _notification != null;

  // "allow_token_transaction" field.
  int? _allowTokenTransaction;
  int get allowTokenTransaction => _allowTokenTransaction ?? 0;
  set allowTokenTransaction(int? val) => _allowTokenTransaction = val;

  void incrementAllowTokenTransaction(int amount) =>
      allowTokenTransaction = allowTokenTransaction + amount;

  bool hasAllowTokenTransaction() => _allowTokenTransaction != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  set rating(int? val) => _rating = val;

  void incrementRating(int amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "billing_status" field.
  int? _billingStatus;
  int get billingStatus => _billingStatus ?? 0;
  set billingStatus(int? val) => _billingStatus = val;

  void incrementBillingStatus(int amount) =>
      billingStatus = billingStatus + amount;

  bool hasBillingStatus() => _billingStatus != null;

  // "merchant_p2m" field.
  String? _merchantP2m;
  String get merchantP2m => _merchantP2m ?? '';
  set merchantP2m(String? val) => _merchantP2m = val;

  bool hasMerchantP2m() => _merchantP2m != null;

  // "merchant_p2pmg" field.
  String? _merchantP2pmg;
  String get merchantP2pmg => _merchantP2pmg ?? '';
  set merchantP2pmg(String? val) => _merchantP2pmg = val;

  bool hasMerchantP2pmg() => _merchantP2pmg != null;

  static ProfileInfoStruct fromMap(Map<String, dynamic> data) =>
      ProfileInfoStruct(
        merchantId: data['merchant_id'] as String?,
        fullName: data['full_name'] as String?,
        houseFlatBlockno: data['house_flat_blockno'] as String?,
        apartmentRoadArea: data['apartment_road_area'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        pincode: castToType<int>(data['pincode']),
        shopName: data['shop_name'] as String?,
        registeredBusinessName: data['registered_business_name'] as String?,
        emailId: data['email_id'] as String?,
        category: data['category'] as String?,
        status: castToType<int>(data['status']),
        type: data['type'] as String?,
        extension: getDataList(data['extension']),
        turnoverType: data['turnover_type'] as String?,
        pancardNumber: data['pancard_number'] as String?,
        subCategory: data['sub_category'] is SubCategoryStruct
            ? data['sub_category']
            : SubCategoryStruct.maybeFromMap(data['sub_category']),
        notification: castToType<int>(data['notification']),
        allowTokenTransaction: castToType<int>(data['allow_token_transaction']),
        rating: castToType<int>(data['rating']),
        billingStatus: castToType<int>(data['billing_status']),
        merchantP2m: data['merchant_p2m'] as String?,
        merchantP2pmg: data['merchant_p2pmg'] as String?,
      );

  static ProfileInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'merchant_id': _merchantId,
        'full_name': _fullName,
        'house_flat_blockno': _houseFlatBlockno,
        'apartment_road_area': _apartmentRoadArea,
        'city': _city,
        'state': _state,
        'pincode': _pincode,
        'shop_name': _shopName,
        'registered_business_name': _registeredBusinessName,
        'email_id': _emailId,
        'category': _category,
        'status': _status,
        'type': _type,
        'extension': _extension,
        'turnover_type': _turnoverType,
        'pancard_number': _pancardNumber,
        'sub_category': _subCategory?.toMap(),
        'notification': _notification,
        'allow_token_transaction': _allowTokenTransaction,
        'rating': _rating,
        'billing_status': _billingStatus,
        'merchant_p2m': _merchantP2m,
        'merchant_p2pmg': _merchantP2pmg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'merchant_id': serializeParam(
          _merchantId,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'house_flat_blockno': serializeParam(
          _houseFlatBlockno,
          ParamType.String,
        ),
        'apartment_road_area': serializeParam(
          _apartmentRoadArea,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'pincode': serializeParam(
          _pincode,
          ParamType.int,
        ),
        'shop_name': serializeParam(
          _shopName,
          ParamType.String,
        ),
        'registered_business_name': serializeParam(
          _registeredBusinessName,
          ParamType.String,
        ),
        'email_id': serializeParam(
          _emailId,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'extension': serializeParam(
          _extension,
          ParamType.String,
          isList: true,
        ),
        'turnover_type': serializeParam(
          _turnoverType,
          ParamType.String,
        ),
        'pancard_number': serializeParam(
          _pancardNumber,
          ParamType.String,
        ),
        'sub_category': serializeParam(
          _subCategory,
          ParamType.DataStruct,
        ),
        'notification': serializeParam(
          _notification,
          ParamType.int,
        ),
        'allow_token_transaction': serializeParam(
          _allowTokenTransaction,
          ParamType.int,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.int,
        ),
        'billing_status': serializeParam(
          _billingStatus,
          ParamType.int,
        ),
        'merchant_p2m': serializeParam(
          _merchantP2m,
          ParamType.String,
        ),
        'merchant_p2pmg': serializeParam(
          _merchantP2pmg,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProfileInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileInfoStruct(
        merchantId: deserializeParam(
          data['merchant_id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        houseFlatBlockno: deserializeParam(
          data['house_flat_blockno'],
          ParamType.String,
          false,
        ),
        apartmentRoadArea: deserializeParam(
          data['apartment_road_area'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        pincode: deserializeParam(
          data['pincode'],
          ParamType.int,
          false,
        ),
        shopName: deserializeParam(
          data['shop_name'],
          ParamType.String,
          false,
        ),
        registeredBusinessName: deserializeParam(
          data['registered_business_name'],
          ParamType.String,
          false,
        ),
        emailId: deserializeParam(
          data['email_id'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        extension: deserializeParam<String>(
          data['extension'],
          ParamType.String,
          true,
        ),
        turnoverType: deserializeParam(
          data['turnover_type'],
          ParamType.String,
          false,
        ),
        pancardNumber: deserializeParam(
          data['pancard_number'],
          ParamType.String,
          false,
        ),
        subCategory: deserializeStructParam(
          data['sub_category'],
          ParamType.DataStruct,
          false,
          structBuilder: SubCategoryStruct.fromSerializableMap,
        ),
        notification: deserializeParam(
          data['notification'],
          ParamType.int,
          false,
        ),
        allowTokenTransaction: deserializeParam(
          data['allow_token_transaction'],
          ParamType.int,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.int,
          false,
        ),
        billingStatus: deserializeParam(
          data['billing_status'],
          ParamType.int,
          false,
        ),
        merchantP2m: deserializeParam(
          data['merchant_p2m'],
          ParamType.String,
          false,
        ),
        merchantP2pmg: deserializeParam(
          data['merchant_p2pmg'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProfileInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProfileInfoStruct &&
        merchantId == other.merchantId &&
        fullName == other.fullName &&
        houseFlatBlockno == other.houseFlatBlockno &&
        apartmentRoadArea == other.apartmentRoadArea &&
        city == other.city &&
        state == other.state &&
        pincode == other.pincode &&
        shopName == other.shopName &&
        registeredBusinessName == other.registeredBusinessName &&
        emailId == other.emailId &&
        category == other.category &&
        status == other.status &&
        type == other.type &&
        listEquality.equals(extension, other.extension) &&
        turnoverType == other.turnoverType &&
        pancardNumber == other.pancardNumber &&
        subCategory == other.subCategory &&
        notification == other.notification &&
        allowTokenTransaction == other.allowTokenTransaction &&
        rating == other.rating &&
        billingStatus == other.billingStatus &&
        merchantP2m == other.merchantP2m &&
        merchantP2pmg == other.merchantP2pmg;
  }

  @override
  int get hashCode => const ListEquality().hash([
        merchantId,
        fullName,
        houseFlatBlockno,
        apartmentRoadArea,
        city,
        state,
        pincode,
        shopName,
        registeredBusinessName,
        emailId,
        category,
        status,
        type,
        extension,
        turnoverType,
        pancardNumber,
        subCategory,
        notification,
        allowTokenTransaction,
        rating,
        billingStatus,
        merchantP2m,
        merchantP2pmg
      ]);
}

ProfileInfoStruct createProfileInfoStruct({
  String? merchantId,
  String? fullName,
  String? houseFlatBlockno,
  String? apartmentRoadArea,
  String? city,
  String? state,
  int? pincode,
  String? shopName,
  String? registeredBusinessName,
  String? emailId,
  String? category,
  int? status,
  String? type,
  String? turnoverType,
  String? pancardNumber,
  SubCategoryStruct? subCategory,
  int? notification,
  int? allowTokenTransaction,
  int? rating,
  int? billingStatus,
  String? merchantP2m,
  String? merchantP2pmg,
}) =>
    ProfileInfoStruct(
      merchantId: merchantId,
      fullName: fullName,
      houseFlatBlockno: houseFlatBlockno,
      apartmentRoadArea: apartmentRoadArea,
      city: city,
      state: state,
      pincode: pincode,
      shopName: shopName,
      registeredBusinessName: registeredBusinessName,
      emailId: emailId,
      category: category,
      status: status,
      type: type,
      turnoverType: turnoverType,
      pancardNumber: pancardNumber,
      subCategory: subCategory ?? SubCategoryStruct(),
      notification: notification,
      allowTokenTransaction: allowTokenTransaction,
      rating: rating,
      billingStatus: billingStatus,
      merchantP2m: merchantP2m,
      merchantP2pmg: merchantP2pmg,
    );
