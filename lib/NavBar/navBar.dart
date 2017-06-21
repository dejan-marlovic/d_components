// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'dart:html';
import 'dart:math';
@Component(
  selector: 'NavBar',
  styleUrls: const ['navBar.css'],
  templateUrl: 'navBar.html'
)
class NavBar
{
  NavBar()
  {
    window.onScroll.listen((event) {

      deltaScrollPosition += currentScrollPosition - document.body.scrollTop;
      currentScrollPosition = document.body.scrollTop;
      offset = max(-height, -currentScrollPosition);
      bottomOffset =  min(0,-height + deltaScrollPosition);
      if(isScrolledToBottom){deltaScrollPosition=0;}
    });
  }
  bool get isTop => currentScrollPosition == 0;
  bool get isScrolledToBottom => window.innerHeight + window.scrollY >= document.body.offsetHeight;
  bool get scrollingUp => deltaScrollPosition > 0;
  int currentScrollPosition = 0;
  int offset = 0;
  final int height = 100;
  int deltaScrollPosition = 0;
  int bottomOffset=0;

}


