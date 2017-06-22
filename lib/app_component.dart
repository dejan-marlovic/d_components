// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'd_tooltip/d_tooltip.dart';
import 'd_slider/d_slider.dart';
import 'd_nav_bar/d_nav_bar.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, dTooltip, dSlider,dNavBar],
  providers: const [materialProviders, dTooltip, dSlider, dNavBar],
)
class AppComponent {

  // Nothing here yet. All logic is in HelloDialog.
}
