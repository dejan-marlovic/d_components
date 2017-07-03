// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular2/core.dart';

@Component(
    selector: 'd_slider_component',
    styleUrls: const ['d_slider_component.css'],
    templateUrl: 'd_slider_component.html'
)
class dSlider {

  @Input()
  String currentValue;
  @Input()
  String max;
  @Input()
  String min;
  @Input()
  String step;
}
