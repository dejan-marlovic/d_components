// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'd-colorpicker',
  styleUrls: const ['d_colorpicker.scss.css'],
  templateUrl: 'd_colorpicker.html',
  providers: const [],
  directives: const [materialDirectives, formDirectives],
)
class ColorPickerComponent
    implements OnDestroy, AfterContentInit {
  ColorPickerComponent(this._formBuilder) : instanceNo = _instanceCounter {
    _instanceCounter++;
  }

  @override
  void ngAfterContentInit() {
    form =
        _formBuilder.group({'color': [color, Validators.compose([cssColor])]});
  }

  @override
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
  final StreamController<String> _valueStreamController = new StreamController
      .broadcast();
  final FormBuilder _formBuilder;
  ControlGroup form;

  @Input('value')
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
  final pattern = new RegExp(r'(^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$)');
  final result = pattern.stringMatch(control.value);

  if (result == null || result.length != control.value.length)
    return {'error': 'ange ett hex-värde(#123456)'};

  return null;
}

