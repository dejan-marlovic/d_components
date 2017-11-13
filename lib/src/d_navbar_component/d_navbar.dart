// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular/angular.dart';
import 'dart:html';
import 'dart:math';
@Component(
  selector: 'd-navbar',
  styleUrls: const ['d_navbar.scss.css'],
  templateUrl: 'd_navbar.html'
)
class dNavbarComponent implements AfterViewInit
{
  dNavbarComponent(Element host)
  {
    _parentElement = host.parent;

    _parentElement.onScroll.listen((event)
    {
      if (alwaysShow) offset = 0;
      else
      {
        int deltaScrollY = _parentElement.scrollTop - _previousScrollY;
        offset = _clamp(offset + deltaScrollY, 0, height);
        _previousScrollY = _parentElement.scrollTop;
      }
    });
  }

  void ngAfterViewInit()
  {
    /**
     * Make sure nav doesn't overflow container scrollbar
     */
    navContainer.nativeElement.style.width = _parentElement.clientWidth.toString() + "px";
    window.onResize.listen((_)
    {
      navContainer.nativeElement.style.width = _parentElement.clientWidth.toString() + "px";
    });
  }

  int _clamp(int value, int minimum, int maximum) => max(minimum, min(maximum, value));

  bool get isTop => (_parentElement == null) ? true : _parentElement.scrollTop == 0;
  int offset = 0;
  int _previousScrollY = 0;

  DivElement _parentElement;

  @Input('backgroundColor')
  String backgroundColor = "white";

  @Input('height')
  int height = 100;

  @Input('alwaysShow')
  bool alwaysShow = false;

  @ViewChild('navContainer')
  ElementRef navContainer;
}


