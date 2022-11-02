import 'user.dart';
import 'user_data_object.dart';

class UserRepository {
  static List<User> user = [
    User(
      username: new UserDataObject(data: 'timheidecker2020'),
      password: new UserDataObject(data: 'Er!cW@reh3imer'),
      location: new UserDataObject(data: "Cary, NC"),
      occupation: new UserDataObject(data: "Owner at ACME"),
      interests: new UserDataObject(
          data: "Swimming, biking, karate, painting, business."),
      bankTitle: new UserDataObject(data: "First National Bank"),
      cardNumber: new UserDataObject(data: "4430 2230 5460 1943"),
      balance: new UserDataObject(data: 0.0),
    ),
    User(
      username: new UserDataObject(data: 'mike_murphy2011'),
      password: new UserDataObject(data: '*********'),
      location: new UserDataObject(data: 'New York City, NY'),
      occupation: new UserDataObject(data: 'Actor at Broadway Theatre'),
      interests: new UserDataObject(
          data: "Film, Education, Fine Arts, Computer Science"),
      bankTitle: new UserDataObject(data: "The Goodman Bank of Trust"),
      cardNumber: new UserDataObject(data: "2344 4322 6857 2222"),
      balance: new UserDataObject(data: 5400.0),
      finTechInvestment: new UserDataObject(data: 6500.0),
      healthCareInvestment: new UserDataObject(data: 1000.0),
      agriculture: new UserDataObject(data: 2300.0),
    ),
  ];

  void addUser(User user) {

  }

  void findUser(User user) {

  }

}
