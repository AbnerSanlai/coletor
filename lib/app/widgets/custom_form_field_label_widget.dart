import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFormFieldLabelWidget extends StatelessWidget {
  final String title;
  final String label;
  final IconData? icon;
  final Color? corIcon;
  final TextEditingController controller;
  final TextInputType typekey;
  final obscure;
  final VoidCallback? funcao;
  final FocusNode? foco;
  final double width;
  const CustomFormFieldLabelWidget({
    Key? key,
    this.title = "CustomFormFieldWidget",
    required this.label,
    this.icon,
    required this.controller,
    required this.typekey,
    required this.obscure,
    this.funcao,
    this.corIcon,
    this.foco,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: width, //70% da largura da tela
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.black45,
                  offset: Offset(2, 2),
                )
              ]),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                focusNode: foco,
                controller: controller,
                decoration: InputDecoration(
                    labelText: label,
                    border: InputBorder.none,
                    hintText: label,
                    hintStyle: GoogleFonts.abel()),
                keyboardType: typekey,
                obscureText: obscure,
                style: TextStyle(fontSize: 16),
              )),
              InkWell(
                onTap: funcao,
                child: Icon(
                  icon,
                  color: corIcon,
                ),
              ) // Pode passar imagens ou icons
            ],
          ),
        )
      ],
    );
  }
}
