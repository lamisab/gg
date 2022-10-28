import 'package:day_manager/constFiles/colors.dart';
import 'package:day_manager/constFiles/strings.dart';
import 'package:day_manager/controller/reportController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'categorySelector.dart';

class CategorySelectHeader extends StatelessWidget {
  const CategorySelectHeader({Key? key}) : super(key: key);

  static ReportController? reportController;

  @override
  Widget build(BuildContext context) {
    reportController = Provider.of<ReportController>(context);
    return Container(
        padding: EdgeInsets.all(5.0),
        child: IconButton(
            icon: Icon(Icons.calendar_today),
            color: Colors.blueGrey,
            onPressed: () async {
              DateTimeRange? picked = await showDateRangePicker(
                  context: context,
                  firstDate: new DateTime(2022),
                  lastDate: new DateTime(DateTime.now().year + 10));
              if (picked != null)
                reportController!.fetchTransaction(
                    customFromDate: picked.start, customToDate: picked.end);
            }));
  }

  Color containerColor(String method) =>
      reportController!.reportMethod == method
          ? primaryColor
          : Color.fromARGB(0, 169, 165, 165);

  Color categoryTextColor(String method) =>
      reportController!.reportMethod == method ? whiteColor : categoryText;
}
