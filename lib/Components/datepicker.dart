import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class BasicDateField extends StatelessWidget {
  final format = DateFormat("MMM d, yyyy");
  String _label;
  FormFieldSetter<DateTime> onSaved;

  BasicDateField(String label, FormFieldSetter<DateTime> onSaved) {
    this._label = label;
    this.onSaved = onSaved;
  }

  @override
  Widget build(BuildContext context) {
    return Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //MediaQuery.removePadding(removeTop: true,),
          Container(
            //padding: EdgeInsets.only(top:0.0),

          ),
          Text(' ${this._label}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: Colors.white,
              )),
          DateTimeField(
            format: format,
            style: TextStyle(color: Colors.white),
            onSaved: (date) => {
                this.onSaved(date)
            },
            onShowPicker: (context, currentValue) async {
              final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime.now());
              if (date != null) {
                return DateTimeField.combine(date, TimeOfDay.fromDateTime(DateTime.now()));
              } else {
                return currentValue;
              }
            },
          ),

        ]

    );
  }
}
