class PersonModel {
  String name = "";
  String street = "";
  String city = "";
  String countryCode = "";
  String countryName = "";
  String postalCode = "";
  String stateOrProvinceCode = "";
  String stateOrProvinceName = "";

  PersonModel({this.name, this.street, this.city
    , this.countryCode, this.countryName, this.postalCode
    , this.stateOrProvinceCode, this.stateOrProvinceName
  });

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return PersonModel();
    }
    return PersonModel(
      name : json['name'] as String,
      street : json['street'] as String,
      city : json['city'] as String,
      countryCode : json['countryCode'] as String,
      countryName : json['countryName'] as String,
      postalCode : json['postalCode'] as String,
      stateOrProvinceCode : json['stateOrProvinceCode'] as String,
      stateOrProvinceName : json['stateOrProvinceName'] as String,
    );
  }
}