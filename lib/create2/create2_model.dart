import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Create2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  
  // // State field(s) for confirmPassword widget.
  // TextEditingController? confirmPasswordController;
  // late bool confirmPasswordVisibility;
  // String? Function(BuildContext, String?)? confirmPasswordControllerValidator;

  /// Initialization and disposal methods.

  Create2Model() {
    // Initialize controllers
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    // confirmPasswordController = TextEditingController();

    // Basic validators
    emailAddressControllerValidator = (context, value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your email.';
      }
      if (!value.contains('@')) {
        return 'Please enter a valid email address.';
      }
      return null;
    };

    passwordControllerValidator = (context, value) {
      if (value == null || value.isEmpty) {
        return 'Please enter a password.';
      }
      if (value.length < 6) {
        return 'Password should be at least 6 characters long.';
      }
      return null;
    };

    // confirmPasswordControllerValidator = (context, value) {
    //   if (value == null || value != passwordController?.text) {
    //     return 'Passwords do not match.';
    //   }
    //   return null;
    // };
  }

  void initState(BuildContext context) {
    passwordVisibility = false;
    // confirmPasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    // confirmPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
