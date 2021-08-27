class NanoCompany {
  //This class exhibits Abstraction because as you can see, the nanoCompanyStaff class is not directly used but
  //the nanoStaffDetails instead (the nanoCompanyStaff method is hidden to the users).
  

  String? _staffName = 'Gerome';
  String? _staffPosition = 'Regular';
  int? _staffAge = 19;
  int? _staffPay = 20000;
  int? _staffID = 2018104005;

  nanoCompanyStaff(name, age, position, id) {
    name = this._staffName;
    age = this._staffAge;
    position = this._staffPosition;
    id = this._staffID;
  }

  void nanoStaffDetails() {
    print("Name of Staff: " + _staffName.toString());
    print("Age of Staff: " + _staffAge.toString());
    print("Position of Staff: " + _staffPosition.toString());
    print("Salary of Staff: " + _staffPay.toString());
  }
}

// These classes exhibit both Polymorphisnm and Inheritance because these classes inherits from the NanoCompany class and then overriding it
// which also demonstrates Polymorphism. Every class override makes the name of the staff, position, age, and pay different.
class NanoCompanyCEO extends NanoCompany {
  @override
  String? _staffName = 'Robert';
  String? _staffPosition = 'CEO';
  int? _staffAge = 41;
  int? _staffPay = 90000;
  int? _staffID = 2015919231;
}
// Polymorphism and Inheritance (2)
class NanoCompanyManger extends NanoCompanyCEO {
  @override
  String? _staffName = 'Nathan';
  String? _staffPosition = 'Manager';
  int? _staffAge = 32;
  int? _staffPay = 30000;
  int? _staffID = 2017913241;
}

// Display
void main() {
  NanoCompany regularStaff = NanoCompany();
  regularStaff.nanoStaffDetails();
  print("");
  NanoCompanyCEO ceoOfTheCompany = NanoCompanyCEO();
  ceoOfTheCompany.nanoStaffDetails();
  print("");
  NanoCompanyManger managerOfTheCompany = NanoCompanyManger();
  managerOfTheCompany.nanoStaffDetails();

  NanoCompany iddisplay = NanoCompany();
  iddisplay._staffID;
}
