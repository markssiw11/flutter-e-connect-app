class Validator {
  static bool isValidEmail(String email) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  static bool isValidPhoneNumber(String phone) =>
      RegExp(r"^0{1}[0-9]{9}$").hasMatch(phone);
  static bool isValidCarLicensePlates(String licensePlates) =>
      RegExp(r"(\d{2})([a-zA-Z]{1})(\d{4,})").hasMatch(licensePlates);
  static bool isValidMotorLicensePlates(String licensePlates) =>
      RegExp(r"^(\d{2})([a-zA-Z]{1,2}|[a-zA-Z]{1,2}(\d{1})|(\d{1})[a-zA-Z]{1,2}|[a-zA-Z]{1}(\d{1})[a-zA-Z]{1})(\d{4,5})$").hasMatch(licensePlates);
  static bool isValidTaxIdentification(String tax) =>
      RegExp(r"^(\d{10}|\d{10}[-]{1}\d{3})$").hasMatch(tax);

  static bool isContainBothLetterAndANumber(String content) =>RegExp(r"^(?=.*?\d)(?=.*?[a-zA-Z])[a-zA-Z\d]+$").hasMatch(content);

  static bool isValidPassword(String content) =>RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$").hasMatch(content);
}
