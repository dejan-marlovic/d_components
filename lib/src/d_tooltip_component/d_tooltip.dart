// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'd-tooltip',
    styleUrls: const ['d_tooltip.css'],
    templateUrl: 'd_tooltip.html',
<<<<<<< HEAD
    directives: const [materialDirectives]
)
class TooltipComponent {
  @Input('text')
=======
    directives: const [AutoFocusDirective, MaterialPopupComponent, MaterialIconComponent, PopupSourceDirective])
class TooltipComponent {
  @Input()
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
  String text;

  @Input()
  String glyph;
}
