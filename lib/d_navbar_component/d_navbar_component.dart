// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
@Component(
  selector: 'd_navbar_component',
  styleUrls: const ['d_navbar_component.css'],
  templateUrl: 'd_navbar_component.html',
)
class dNavbar
{
  dNavbar()
  {
    window.onScroll.listen((event)
    {
      if(allwaysShow == false)
      {
        int deltaScrollY = window.scrollY - _previousScrollY;
        offset = clamp(offset + deltaScrollY, 0, height);
        _previousScrollY = window.scrollY;
      }
      else
        offset = 0;
    });
  }

  int clamp(int value, int minimum, int maximum)
  {
    return max(minimum, min(maximum, value));
  }

  bool get isTop => window.scrollY == 0;

  int offset = 0;

  int _previousScrollY = 0;

  @Input('backgroundColor')
  String backgroundColor = "white";

  @Input('height')
  int height = 100;

  @Input('allwaysShow')
  bool allwaysShow = false;
}


