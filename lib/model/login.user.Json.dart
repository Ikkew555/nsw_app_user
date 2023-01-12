class userData {
  int? resCode;
  String? resTxt;
  Info? info;

  userData({this.resCode, this.resTxt, this.info});

  userData.fromJson(Map<String, dynamic> json) {
    resCode = json['resCode'];
    resTxt = json['resTxt'];
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resCode'] = this.resCode;
    data['resTxt'] = this.resTxt;
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}

class Info {
  String? displayName;
  String? displayNameEn;
  String? prefix;
  String? firstname;
  String? lastname;
  String? birthdate;
  int? userId;
  String? username;
  String? userType;
  String? idNo;
  String? emailDefault;
  String? telDefault;
  AddressDefault? addressDefault;

  Info(
      {this.displayName,
      this.displayNameEn,
      this.prefix,
      this.firstname,
      this.lastname,
      this.birthdate,
      this.userId,
      this.username,
      this.userType,
      this.idNo,
      this.emailDefault,
      this.telDefault,
      this.addressDefault});

  Info.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    displayNameEn = json['displayNameEn'];
    prefix = json['prefix'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    birthdate = json['birthdate'];
    userId = json['user_id'];
    username = json['username'];
    userType = json['user_type'];
    idNo = json['id_no'];
    emailDefault = json['email_default'];
    telDefault = json['tel_default'];
    addressDefault = json['address_default'] != null
        ? new AddressDefault.fromJson(json['address_default'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['displayNameEn'] = this.displayNameEn;
    data['prefix'] = this.prefix;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['birthdate'] = this.birthdate;
    data['user_id'] = this.userId;
    data['username'] = this.username;
    data['user_type'] = this.userType;
    data['id_no'] = this.idNo;
    data['email_default'] = this.emailDefault;
    data['tel_default'] = this.telDefault;
    if (this.addressDefault != null) {
      data['address_default'] = this.addressDefault!.toJson();
    }
    return data;
  }
}

class AddressDefault {
  String? addrText;
  String? addrCity;
  String? addrAmphur;
  String? addrProvince;
  String? addrCountry;
  String? addrPostcode;
  String? addrLong;

  AddressDefault(
      {this.addrText,
      this.addrCity,
      this.addrAmphur,
      this.addrProvince,
      this.addrCountry,
      this.addrPostcode,
      this.addrLong});

  AddressDefault.fromJson(Map<String, dynamic> json) {
    addrText = json['addr_text'];
    addrCity = json['addr_city'];
    addrAmphur = json['addr_amphur'];
    addrProvince = json['addr_province'];
    addrCountry = json['addr_country'];
    addrPostcode = json['addr_postcode'];
    addrLong = json['addr_long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addr_text'] = this.addrText;
    data['addr_city'] = this.addrCity;
    data['addr_amphur'] = this.addrAmphur;
    data['addr_province'] = this.addrProvince;
    data['addr_country'] = this.addrCountry;
    data['addr_postcode'] = this.addrPostcode;
    data['addr_long'] = this.addrLong;
    return data;
  }
}
