import 'package:flutter/material.dart';

Widget customTextField(BuildContext context,
    {@required TextEditingController controller,
      @required String hintText,@required Function function}) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: Theme
            .of(context)
            .primaryColor
            .withOpacity(0.5),
        borderRadius: BorderRadius.circular(15)),
    child: TextFormField(
      validator:(value) =>  function(value),
      decoration: InputDecoration.collapsed(
          hintText: hintText,
          hintStyle: Theme
              .of(context)
              .textTheme
              .caption),
    ),
  );
}