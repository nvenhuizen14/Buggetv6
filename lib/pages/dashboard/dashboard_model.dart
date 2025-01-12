import '/components/budget_list_tile_widget.dart';
import '/components/nav_bar_floting/nav_bar_floting_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Models for BudgetListTile dynamic component.
  late FlutterFlowDynamicModels<BudgetListTileModel> budgetListTileModels;
  // Model for NavBarFloting component.
  late NavBarFlotingModel navBarFlotingModel;

  @override
  void initState(BuildContext context) {
    budgetListTileModels =
        FlutterFlowDynamicModels(() => BudgetListTileModel());
    navBarFlotingModel = createModel(context, () => NavBarFlotingModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    budgetListTileModels.dispose();
    navBarFlotingModel.dispose();
  }
}
