import 'package:flutter/cupertino.dart';
import 'package:foodapp2/utilites/dimension.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({Key? key,  this.color= const Color(0xFF332d2b),
    required this.text,
    this.size=0,
    this.overFlow=TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow:overFlow ,
      style: TextStyle(
        color:color,
        fontFamily: 'BebasNeuve',
        fontWeight: FontWeight.w400,
        fontSize: size==0?Dimensions.font20:size,
      ),
    );
  }
}
