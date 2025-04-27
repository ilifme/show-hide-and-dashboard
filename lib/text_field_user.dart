import 'package:flutter/material.dart';

class Textfielduser extends StatefulWidget {
  const Textfielduser({super.key, this.labelText, this.radius, this.isPassword = false,});

  final String? labelText;
  final double? radius;
  final bool isPassword ;

  @override
  State<Textfielduser> createState() => _TextfielduserState();
}

class _TextfielduserState extends State<Textfielduser> {
  bool passhide = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: passhide,
      decoration: InputDecoration(
        fillColor: Colors.amberAccent,
        labelText: widget.labelText,
        hintText: 'Enter your ${widget.labelText}',
        prefixIcon: Icon(Icons.person),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            passhide ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              passhide = !passhide;
            });
          },
        )
          : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 15),
        ),
      ),
    );
  }
}