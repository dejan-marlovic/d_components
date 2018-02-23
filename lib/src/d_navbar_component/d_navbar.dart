// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math';
import 'package:angular/angular.dart';

@Component(
  selector: 'd-navbar',
  styleUrls: const ['d_navbar.scss.css'],
  templateUrl: 'd_navbar.html',
)
class NavbarComponent implements DoCheck {
  NavbarComponent() {
    window.onScroll.listen((event) {
      if (alwaysShow)
        offset = 0;
      else {
        final deltaScrollY = window.scrollY - _previousScrollY;
        offset = _clamp(offset + deltaScrollY, 0, height);
        _previousScrollY = window.scrollY;
      }
    });
  }

  @override
  void ngDoCheck() {
    isTop = window.scrollY == 0;
  }

  int _clamp(int value, int minimum, int maximum) => max(minimum, min(maximum, value));


  bool isTop = false;
  int offset = 0;
  int _previousScrollY = 0;

  @Input('backgroundColor')
  String backgroundColor = 'white';

  @Input('height')
  int height = 100;

  @Input('alwaysShow')
  bool alwaysShow = false;
}
