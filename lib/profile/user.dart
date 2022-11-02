import 'user_data_object.dart';
class User {
  UserDataObject username;
  UserDataObject password;
  UserDataObject location;
  UserDataObject occupation;
  UserDataObject interests;
  UserDataObject bankTitle;
  UserDataObject cardNumber;
  UserDataObject balance;
  UserDataObject finTechInvestment;
  UserDataObject healthCareInvestment;
  UserDataObject agriculture;

  User({
    this.username,
    this.password,
    this.location,
    this.occupation,
    this.interests,
    this.bankTitle,
    this.cardNumber,
    this.balance,
    this.finTechInvestment,
    this.healthCareInvestment,
    this.agriculture,
  });
}
