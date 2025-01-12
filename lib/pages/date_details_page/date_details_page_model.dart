import '/components/custom_calendar/date_details/date_details_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'date_details_page_widget.dart' show DateDetailsPageWidget;
import 'package:flutter/material.dart';

class DateDetailsPageModel extends FlutterFlowModel<DateDetailsPageWidget> {
  ///  Local state fields for this page.

  List<DateTime> timeSegments = [];
  void addToTimeSegments(DateTime item) => timeSegments.add(item);
  void removeFromTimeSegments(DateTime item) => timeSegments.remove(item);
  void removeAtIndexFromTimeSegments(int index) => timeSegments.removeAt(index);
  void insertAtIndexInTimeSegments(int index, DateTime item) =>
      timeSegments.insert(index, item);
  void updateTimeSegmentsAtIndex(int index, Function(DateTime) updateFn) =>
      timeSegments[index] = updateFn(timeSegments[index]);

  ///  State fields for stateful widgets in this page.

  // Model for DateDetails component.
  late DateDetailsModel dateDetailsModel;

  @override
  void initState(BuildContext context) {
    dateDetailsModel = createModel(context, () => DateDetailsModel());
  }

  @override
  void dispose() {
    dateDetailsModel.dispose();
  }
}
