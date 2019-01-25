// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:html';
import 'dart:math';
import 'package:angular/angular.dart';

@Component(
<<<<<<< HEAD
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
=======
    selector: 'd-navbar',
    styleUrls: const ['d_navbar.css'],
    templateUrl: 'd_navbar.html')
class NavbarComponent implements OnInit, AfterViewInit {
  NavbarComponent(this.host);

  @override
  void ngOnInit() {
    _parentElement = trackDocument ? document.documentElement : host.parent;
    
    final s = trackDocument ? window : host.parent;
    s.onScroll.listen((event) {
      if (alwaysShow) {
        offset = 0;
      }
      else {
        final deltaScrollY = _parentElement.scrollTop - _previousScrollY;
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
        offset = _clamp(offset + deltaScrollY, 0, height);
        _previousScrollY = _parentElement.scrollTop;
      }
    });
  }

  @override
<<<<<<< HEAD
  void ngDoCheck() {
    isTop = window.scrollY == 0;
  }

  int _clamp(int value, int minimum, int maximum) => max(minimum, min(maximum, value));

=======
  void ngAfterViewInit() {
    /**
     * Make sure nav doesn't overflow container scrollbar
     */
    //final navContainer = host.querySelector('#navContainer');
   /*
    navContainer.style.width = '${_parentElement.clientWidth}px';
   
    window.onResize.listen((_) {
      navContainer.style.width = '${_parentElement.clientWidth}px';
    });*/
  }

  int _clamp(int value, int minimum, int maximum) =>
      max(minimum, min(maximum, value));
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f

  bool get isTop =>
      (_parentElement == null) ? true : _parentElement.scrollTop == 0;
  int offset = 0;
  int _previousScrollY = 0;

<<<<<<< HEAD
  @Input('backgroundColor')
=======
  Element _parentElement;
  final Element host;

  @Input()
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
  String backgroundColor = 'white';

  @Input()
  int height = 100;

  @Input()
  bool alwaysShow = false;
<<<<<<< HEAD
=======

  @Input()
  bool trackDocument = false;
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
}
