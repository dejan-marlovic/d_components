// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'd-colorpicker',
    styleUrls: ['d_colorpicker.css'],
    templateUrl: 'd_colorpicker.html',
    directives: [materialInputDirectives, formDirectives],
    changeDetection: ChangeDetectionStrategy.OnPush)
class ColorPickerComponent implements OnDestroy {
  ColorPickerComponent() : instanceNo = _instanceCounter {
    _instanceCounter++;
  }

  void ngOnDestroy() {
    _valueStreamController.close();
  }

  String get color => _color;

  String get id => 'dColorPicker-$instanceNo';

  set color(String value) {
    _valueStreamController.add(value);
    _color = value;
  }

  String _color = '#fff';
  final StreamController<String> _valueStreamController =
      StreamController.broadcast();

  ControlGroup form = ControlGroup({
    'color': Control('', cssColor),
  });

  @Input('value')
  // ignore: avoid_setters_without_getters
  set colorExternal(String value) {
    _color = value;
  }

  String get colorExternal => _color;

  @Output('valueChange')
  Stream<String> get colorOutput => _valueStreamController.stream;

  final int instanceNo;
  static int _instanceCounter = 0;
}

Map<String, String> cssColor(AbstractControl control) {
  final pattern = RegExp(r'(^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$)');
  final result = pattern.stringMatch(control.value);

  if (result == null || result.length != control.value.length)
    return {'error': 'enter a hex value'};

  return null;
}
