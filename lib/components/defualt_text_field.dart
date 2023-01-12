
import 'package:flutter/material.dart';

import '../constanst/constanst.dart';

class Defulat_Text_Field extends StatelessWidget {
  final String laple;
  final TextEditingController Controlear;
  final TextInputType type;
  final Icon icon;
  const Defulat_Text_Field({
    Key? key,
    required this.laple,
    required this.Controlear,
    required this.type,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      controller: Controlear,
      decoration: InputDecoration(
        prefixIcon: icon,
        label: Text(laple),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: kPrimryColor,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}