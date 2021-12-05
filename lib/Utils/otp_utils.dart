import 'package:flutter/material.dart';

import 'color_utils.dart';


class OTPTextField extends StatefulWidget {
  /// Number of the OTP Fields
  final int length;

  /// Total Width of the OTP Text Field
  final double width;
  /// Width of the single OTP Field
  final double fieldWidth;

  /// Manage the type of keyboard that shows up
  TextInputType keyboardType;

  /// The style to use for the text being edited.
  final TextStyle style;

  /// Text Field Alignment
  /// default: MainAxisAlignment.spaceBetween [MainAxisAlignment]
  final MainAxisAlignment textFieldAlignment;

  /// Obscure Text if data is sensitive
  final bool obscureText;

  /// Text Field Style for field shape.
  /// default FieldStyle.underline [FieldStyle]
  final FieldStyle fieldStyle;

  /// Callback function, called when a change is detected to the pin.
  ValueChanged<String>? onChanged;

  /// Callback function, called when pin is completed.
  ValueChanged<String>? onCompleted;

//  Stream<Color>? stream;




  OTPTextField(
      {Key? key,
        this.length = 4,
        this.width = 10,
        this.fieldWidth = 30,
        this.keyboardType = TextInputType.number,
        this.style = const TextStyle(),
        this.textFieldAlignment = MainAxisAlignment.spaceBetween,
        this.obscureText = true,
        this.fieldStyle = FieldStyle.box,
        this.onChanged,
        this.onCompleted,
        //this.stream
      })
      : assert(length > 1);



  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  final _focusNodes = <FocusNode>[];
  final _textControllers = <TextEditingController>[];

  final _textFields = <Widget>[];
  late List<String> _pin;

//  late Color changeColor;

 /* void _updateSeconds(Color changeColorValid) {
    setState(() {
      changeColor = changeColorValid;
    });
  }*/

  @override
  void initState() {
    super.initState();

    _focusNodes.clear();
    _textControllers.clear();

    for(int index = 0; index < widget.length; index++) {
      _focusNodes.add(FocusNode());
      _textControllers.add(TextEditingController());
    }

    _pin = List.generate(widget.length, (int otp) {
      return '';
    });

   /* widget.stream?.listen((seconds) {
      _updateSeconds(seconds);
    });*/
  //  changeColor = widget.bgColor;
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    for (var controller in _textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _textFields.clear();
    for(int index = 0; index < widget.length; index++) {
      _textFields.add(buildTextField(context, index));
    }

    return SizedBox(
      width: widget.width,
      child: Row(
        mainAxisAlignment: widget.textFieldAlignment,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _textFields,
      ),
    );
  }

  /// This function Build and returns individual TextField item.
  ///
  /// * Requires a build context
  /// * Requires Int position of the field
  Widget buildTextField(BuildContext context, int position) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      // color: changeColor,
      ),
      width: widget.fieldWidth,
      child: TextField(
        controller: _textControllers[position],
        keyboardType: widget.keyboardType,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: widget.style,
        focusNode: _focusNodes[position],
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            fillColor: ColorUtils.whiteColor,
            filled: true,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.grey)
            ),
            counterText: "",
            border: widget.fieldStyle == FieldStyle.box
                ? const OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(12.0)),
                borderSide: BorderSide(color: Colors.grey)
            )
                : null
           ),
        onChanged: (String str) {
          // Check if the current value at this position is empty
          // If it is move focus to previous text field.
          if (str.isEmpty) {
            if (position == 0) return;
            _focusNodes[position].unfocus();
            _focusNodes[position - 1].requestFocus();
          }



          // Update the current pin
          setState(() {
            _pin[position] = str;
          });

          // Remove focus
          if (str.isNotEmpty) _focusNodes[position].unfocus();
          // Set focus to the next field if available
          if (position + 1 != widget.length && str.isNotEmpty) {
            FocusScope.of(context).requestFocus(_focusNodes[position + 1]);
          }

          String currentPin = "";
          for (var value in _pin) {
            currentPin += value;
          }

          // if there are no null values that means otp is completed
          // Call the `onCompleted` callback function provided
          if (!_pin.contains(null) &&
              !_pin.contains('') &&
              currentPin.length == widget.length) {
            widget.onCompleted!(currentPin);

          }
          widget.onChanged!(currentPin);

        },
      ),
    );
  }

}
enum FieldStyle {
  underline,
  box,
}
