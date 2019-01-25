// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_components/angular_components.dart';

@Component(
<<<<<<< HEAD
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
=======
    selector: 'd-colorpicker',
    styleUrls: const ['d_colorpicker.css'],
    templateUrl: 'd_colorpicker.html',    
    directives: const [materialInputDirectives, formDirectives],
    changeDetection: ChangeDetectionStrategy.OnPush)
class ColorPickerComponent implements OnDestroy {
  ColorPickerComponent() : instanceNo = _instanceCounter {
    _instanceCounter++;
  }

>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
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
<<<<<<< HEAD
  final StreamController<String> _valueStreamController = new StreamController
      .broadcast();
  final FormBuilder _formBuilder;
  ControlGroup form;

  @Input('value')
=======
  final StreamController<String> _valueStreamController =
      new StreamController.broadcast();

  ControlGroup form = new ControlGroup({
    'color': new Control('', cssColor),
  });

  @Input('value')
  // ignore: avoid_setters_without_getters
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f
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
<<<<<<< HEAD
    return {'error': 'ange ett hex-värde(#123456)'};
=======
    return {'error': 'enter a hex value'};
>>>>>>> 6cb875bad4d24e0f3f0bca15cd688e8156e8001f

  return null;
}
