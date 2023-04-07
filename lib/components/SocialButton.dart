import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  SocialButton({Key? key, required this.width, required this.colorIcon, required this.greyIcon}) : super(key: key);

  double width;
  String colorIcon;
  String greyIcon;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {

  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (value){
        setState(() {
          hover = true;
        });
      },
      onExit: (value){
        setState(() {
          hover = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: widget.width,
          height: widget.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: hover?AssetImage(widget.colorIcon,):AssetImage(widget.greyIcon,),
            ),
          ),
        ),
      ),
    );
  }
}
