// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
  selector: 'dSlider',
  styleUrls: const ['dSlider.css'],
  templateUrl: 'dSlider.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
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
