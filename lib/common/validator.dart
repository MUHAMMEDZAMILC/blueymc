import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/services.dart';

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
}
