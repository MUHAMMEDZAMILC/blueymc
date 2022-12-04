import 'dart:core';

class Validate {
  static String? emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  static String? pwdValidator(String value) {
    if (value.length < 10 || num.tryParse(value) == null) {
      return 'Password should contain atleast 10 digits';
    } else {
      return null;
    }
  }

  static String? numberValidator(String value) {
    if (value.length < 10 || num.tryParse(value) == null) {
      return 'Phone number should contain atleast 10 digits';
    } else {
      return null;
    }
  }

  static String? AdpwdValidator(String value) {
    if (value.length < 8) {
      //elitethootha4545
      return "Password should contain atleast 8 characters ";
    } else {
      return null;
    }
  }

  static String? NameValidator(String value) {
    if (value.toString() == "") {
      return " User Name is Invalid ";
    } else {
      return null;
    }
  }

  static String? MatchNameValidator(String value) {
    if (value.toString() == "") {
      return " Match name is Null ";
    } else {
      return null;
    }
  }

  static String? TimeValidator(String value) {
    if (value.toString() == "") {
      return " TIme is Null ";
    } else {
      return null;
    }
  }

  static String? LocationValidator(String value) {
    if (value.toString() == "") {
      return " Location is Null ";
    } else {
      return null;
    }
  }

  static String? DayValidator(String value) {
    if (value.toString() == "") {
      return " Day is Null ";
    } else {
      return null;
    }
  }

  static String? reasonValidator(String value) {
    if (value.toString() == "") {
      return " Reason input is null ";
    } else {
      return null;
    }
  }
}
