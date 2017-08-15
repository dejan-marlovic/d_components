// Copyright (c) 2017, dmarl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'package:angular2/angular2.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'd-colorpicker',
    styleUrls: const ['d_colorpicker.css'],
    templateUrl: 'd_colorpicker.html',
    providers: const [FORM_PROVIDERS],
    directives: const [materialDirectives, FORM_DIRECTIVES],
)
class dColorPickerComponent implements OnDestroy, AfterContentInit
{
  dColorPickerComponent(this._formBuilder);

  void ngAfterContentInit()
  {
    form = _formBuilder.group({"color":[color,Validators.compose([cssColor])]});
  }

  void ngOnDestroy()
  {
    _valueStreamController.close();
  }

  String get color => _color;

  void set color(String value)
  {
    _valueStreamController.add(value);
    _color  = value;
  }

  String _color = "#FFFFFF";
  final StreamController<String> _valueStreamController = new StreamController.broadcast();
  final FormBuilder _formBuilder;
  ControlGroup form;

  @Input('value')
  void set colorExternal(String value)
  {
    _color = value;
  }

  @Output('valueChange')
  Stream<String> get colorOutput => _valueStreamController.stream;
}

Map<String, String> cssColor(AbstractControl control)
{
  RegExp pattern = new RegExp(r"(^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$)");
  String result = pattern.stringMatch(control.value);

  if (result == null || result.length != control.value.length)
    return {"error":"ange ett hex-värde(#123456)"};

  return null;
}

