import 'package:flutter/material.dart';

class Textfielduser extends StatefulWidget {
  const Textfielduser({
    super.key,
    this.labelText,
    this.radius,
    this.isPassword = false,
    this.controller,
  });

  final String? labelText;
  final double? radius;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  State<Textfielduser> createState() => _TextfielduserState();
}

class _TextfielduserState extends State<Textfielduser> {
  bool passhide = true;

  void showhide() {
    setState(() {
      passhide = !passhide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? passhide : false,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white10,
        labelText: widget.labelText,
        hintText: 'Enter your ${widget.labelText}',
        hintStyle:  TextStyle(color: Colors.white70),
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          widget.isPassword ? Icons.lock : Icons.person,
          color: Colors.white,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            passhide ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: showhide,
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius ?? 15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white70),
          borderRadius: BorderRadius.circular(widget.radius ?? 15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(widget.radius ?? 15),
        ),
      ),
    );
  }
}
