// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:d_components/d_tooltip_component/d_tooltip_component.dart';
import 'package:d_components/d_slider_component/d_slider_component.dart';
import 'package:d_components/d_navbar_component/d_navbar_component.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [materialDirectives, dTooltip, dSlider, dNavbar],
    providers: const [materialProviders]
)
class AppComponent
{

  // Nothing here yet. All logic is in HelloDialog.
}
