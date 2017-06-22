// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
  selector: 'd_tooltip',
  styleUrls: const ['d_tooltip.css'],
  templateUrl: 'd_tooltip.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class dTooltip {

  @Input()
  String text;

  @Input()
  String glyphName;
}
