import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:form_field_validator/form_field_validator.dart';

mixin Validators {
  FormFieldValidator<String> emailValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Enter Email address"),
      FormBuilderValidators.email(errorText: "Enter valid email address"),
    ]);
  }

  FormFieldValidator<String> passwordValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: "Enter Password"),
      FormBuilderValidators.minLength(8,
          errorText: "Password must be at least 8 characters")
    ]);
  }
}
