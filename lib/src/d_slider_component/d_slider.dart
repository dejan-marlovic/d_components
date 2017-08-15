// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular2/angular2.dart';

@Component(
    selector: 'd-slider',
    styleUrls: const ['d_slider.css'],
    templateUrl: 'd_slider.html'
)
class dSliderComponent {

  @Input()
  String value;
  @Input()
  String max;
  @Input()
  String min;
  @Input()
  String step;
}
