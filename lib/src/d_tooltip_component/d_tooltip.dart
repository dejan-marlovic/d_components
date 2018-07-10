// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'd-tooltip',
    styleUrls: const ['d_tooltip.css'],
    templateUrl: 'd_tooltip.html',
    directives: const [MaterialPopupComponent, MaterialIconComponent])
class TooltipComponent {
  @Input()
  String text;

  @Input()
  String glyph;
}
