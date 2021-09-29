String passwordValidate(String pass) {
  if (pass.isEmpty) {
    return 'Please enter some text!';
  } else if (pass.length <= 3) {
    return "Password must be at least 3 characters";
  } else if (pass.length >= 12)
    return "Password must be more 12 characters";
  else
    return null;
}

String userNameValidate(String name) {
  if (name.isEmpty) {
    return 'Please enter some text!';
  } else if (name.length <= 3) {
    return "Username must be at least 3 characters";
  } else if (name.length >= 12)
    return "Username must be more 12 characters";
  else
    return null;
}
