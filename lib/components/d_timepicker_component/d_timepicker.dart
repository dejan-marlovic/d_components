// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular/angular.dart';
import 'package:intl/intl.dart';


@Component(
    selector: 'd-timepicker',
    styleUrls: const ['d_timepicker.css'],
    templateUrl: 'd_timepicker.html',
    directives: const [coreDirectives]
)
class TimePickerComponent implements AfterContentInit
{
  void ngAfterContentInit()
  {
    startTime = new DateTime(now.year,now.month,now.day);
    time = startTime;
    duration = new Duration(minutes: int.parse(stepMinutes));

    while (time.day == startTime.day) {
      times.add(format.format(time));
      time = time.add(duration);
    }
  }

  DateTime startTime;
  DateTime now = new DateTime.now();
  Duration duration;
  DateTime time;
  List<String> times = [];
  DateFormat format = new DateFormat('Hms');

  @Input('stepMinutes')
  String stepMinutes;
}


