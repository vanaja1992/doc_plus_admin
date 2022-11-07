import 'dart:convert';
UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());
class UserModel {
  UserModel({
      String? id, 
      String? email, 
      String? password, 
      bool? isActive, 
      String? userType, 
      String? name, 
      String? dob, 
      String? addressLine1, 
      String? addressLine3, 
      String? city, 
      String? district, 
      String? state, 
      String? country, 
      String? pincode, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
    _id = id;
    _email = email;
    _password = password;
    _isActive = isActive;
    _userType = userType;
    _name = name;
    _dob = dob;
    _addressLine1 = addressLine1;
    _addressLine3 = addressLine3;
    _city = city;
    _district = district;
    _state = state;
    _country = country;
    _pincode = pincode;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}
  UserModel.fromJson(dynamic json) {
    _id = json['_id'];
    _email = json['email'];
    _password = json['password'];
    _isActive = json['isActive'];
    _userType = json['userType'];
    _name = json['name'];
    _dob = json['dob'];
    _addressLine1 = json['addressLine1'];
    _addressLine3 = json['addressLine3'];
    _city = json['city'];
    _district = json['district'];
    _state = json['state'];
    _country = json['country'];
    _pincode = json['pincode'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _email;
  String? _password;
  bool? _isActive;
  String? _userType;
  String? _name;
  String? _dob;
  String? _addressLine1;
  String? _addressLine3;
  String? _city;
  String? _district;
  String? _state;
  String? _country;
  String? _pincode;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
UserModel copyWith({  String? id,
  String? email,
  String? password,
  bool? isActive,
  String? userType,
  String? name,
  String? dob,
  String? addressLine1,
  String? addressLine3,
  String? city,
  String? district,
  String? state,
  String? country,
  String? pincode,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => UserModel(  id: id ?? _id,
  email: email ?? _email,
  password: password ?? _password,
  isActive: isActive ?? _isActive,
  userType: userType ?? _userType,
  name: name ?? _name,
  dob: dob ?? _dob,
  addressLine1: addressLine1 ?? _addressLine1,
  addressLine3: addressLine3 ?? _addressLine3,
  city: city ?? _city,
  district: district ?? _district,
  state: state ?? _state,
  country: country ?? _country,
  pincode: pincode ?? _pincode,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get email => _email;
  String? get password => _password;
  bool? get isActive => _isActive;
  String? get userType => _userType;
  String? get name => _name;
  String? get dob => _dob;
  String? get addressLine1 => _addressLine1;
  String? get addressLine3 => _addressLine3;
  String? get city => _city;
  String? get district => _district;
  String? get state => _state;
  String? get country => _country;
  String? get pincode => _pincode;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['email'] = _email;
    map['password'] = _password;
    map['isActive'] = _isActive;
    map['userType'] = _userType;
    map['name'] = _name;
    map['dob'] = _dob;
    map['addressLine1'] = _addressLine1;
    map['addressLine3'] = _addressLine3;
    map['city'] = _city;
    map['district'] = _district;
    map['state'] = _state;
    map['country'] = _country;
    map['pincode'] = _pincode;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}