import 'package:flutter/material.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_activity.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_date.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_title_description.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_wheater.dart';
import 'package:gspdt/pages/konstruksi/widgets/project_details_workers.dart';

Widget projectDetailsBody(BuildContext context) {
  return Expanded(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title and filters
            projectDetailsTitleDescription(),

            //tanggal
            projectDetailsDate(),

            const SizedBox(
              height: 32.0,
            ),

            //cuaca
            projectDetailsWheater(),

            //workers
            projectDetailsWorkers(context),

            //activity
            projectDetailsActivity(context)
          ],
        ),
      ),
    ),
  );
}
