import 'package:code_structure/core/others/base_view_model.dart';

class SignUpViewModel extends BaseViewModel {
  bool visible = true;

  void toggleVisibility() {
    visible = !visible;
    notifyListeners();
  }
}
