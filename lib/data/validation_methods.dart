abstract class ValidationMethods {
  static String? validateName (String? content){
    if(content!.isEmpty){
      return 'Full name is required';
    }
    else if(content[0] != content[0].toUpperCase()){
      return 'Full name should start with a capital letter';
    }
    return null;
  }

  static String? validateEmail (String? content){
    if(content!.isEmpty){
      return 'Email is required';
    } else if(!content.contains('@') && !content.contains('.')){
      return 'Invalid email format';
    }
    return null;
  }

  static String? validatePassword (String? content){
    if(content!.isEmpty){
      return 'Password is required';
    } else if (content.length<6){
      return 'Password should be at least 6 characters';
    }
    return null;
  }
}