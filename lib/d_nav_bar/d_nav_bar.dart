// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
@Component(
  selector: 'd_nav_bar',
  styleUrls: const ['d_nav_bar.css'],
  templateUrl: 'd_nav_bar.html'
)
class dNavBar
{
  dNavBar()
  {
    window.onScroll.listen((event)
    {
      int deltaScrollY = window.scrollY - previousScrollY;
      offset = clamp(offset + deltaScrollY, 0, height);
      previousScrollY = window.scrollY;
    });
  }

  int clamp(int value, int minimum, int maximum)
  {
   return max(minimum, min(maximum, value));
  }
  bool get isTop => window.scrollY == 0;
  int offset = 0;
  final int height = 100;
  int previousScrollY = 0;
}


