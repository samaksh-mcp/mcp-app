import '/components/custom_nav_bar/custom_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  Local state fields for this page.

  bool notificationAllowed = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - requestNotificationPermission] action in SettingsPage widget.
  bool? isNotificationAllowed;
  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Custom Action - toggleNotifications] action in Switch widget.
  bool? notification;
  // Stores action output result for [Custom Action - toggleNotifications] action in Switch widget.
  bool? toggled;
  // Model for customNavBar component.
  late CustomNavBarModel customNavBarModel;

  @override
  void initState(BuildContext context) {
    customNavBarModel = createModel(context, () => CustomNavBarModel());
  }

  @override
  void dispose() {
    customNavBarModel.dispose();
  }
}
