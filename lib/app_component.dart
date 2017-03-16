// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'dTooltip/dTooltip.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, dTooltip],
  providers: const [materialProviders, dTooltip],
)
class AppComponent {

  // Nothing here yet. All logic is in HelloDialog.
}
