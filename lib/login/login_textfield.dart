import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextField extends StatelessWidget {
  final String title;

  LoginTextField({
    this.title,
  });

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(5),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.width / 9,
          child: CupertinoTextField(
            placeholder: title,
            placeholderStyle: GoogleFonts.lato(color: CupertinoColors.inactiveGray),
            obscureText: false,
            decoration: BoxDecoration(
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 1.0,
                color: CupertinoColors.inactiveGray,
              ),
            ),
            onSubmitted: (String newVal) {},
          ),
        ),
      ],
    );
  }
}
