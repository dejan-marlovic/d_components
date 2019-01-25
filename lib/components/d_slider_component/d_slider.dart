// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'd-slider',
    styleUrls: ['d_slider.css'],
    templateUrl: 'd_slider.html',
    directives: [coreDirectives, NgModel])
class SliderComponent {
  @Input()
  String value;
  @Input()
  String max;
  @Input()
  String min;
  @Input()
  String step;
}
