import '/backend/supabase/supabase.dart';
import '/components/custom_calendar/time_block/time_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'date_details_widget.dart' show DateDetailsWidget;
import 'package:flutter/material.dart';

class DateDetailsModel extends FlutterFlowModel<DateDetailsWidget> {
  ///  Local state fields for this component.

  int? zoomLevel = 1;

  int? itemSpacing = 20;

  ///  State fields for stateful widgets in this component.

  // Models for timeBlock dynamic component.
  late FlutterFlowDynamicModels<TimeBlockModel> timeBlockModels;

  /// Query cache managers for this widget.

  final _eventQueryManager = FutureRequestManager<List<EventRow>>();
  Future<List<EventRow>> eventQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<EventRow>> Function() requestFn,
  }) =>
      _eventQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearEventQueryCache() => _eventQueryManager.clear();
  void clearEventQueryCacheKey(String? uniqueKey) =>
      _eventQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    timeBlockModels = FlutterFlowDynamicModels(() => TimeBlockModel());
  }

  @override
  void dispose() {
    timeBlockModels.dispose();

    /// Dispose query cache managers for this widget.

    clearEventQueryCache();
  }
}
