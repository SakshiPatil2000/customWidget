import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget{

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;


  RoundedBtn({
    required this.btnName,
    this.icon,
    this.bgColor =Colors.blue,
    this.textStyle,
    this.callBack
  }
      );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        callBack!();
      }, child: icon!=null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon!,
        Container(
          width: 11,
        ),
        Text(btnName,style: textStyle,)

      ],



    ) :Text(btnName,style: textStyle,),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(21),
                bottomLeft: Radius.circular(21),
              )
          )
      ),
    );
  }


}