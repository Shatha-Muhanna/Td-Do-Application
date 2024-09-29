import 'package:flutter/material.dart';
import 'package:todo/ui/theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, this.label, required this.onTab}) : super(key: key);
  final label;
  final  void Function()  onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
         onTap: onTab,
          child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primaryClr
        ),
        child: Text(label,style: TextStyle(color: Colors.white,),
          textAlign: TextAlign.center,),
      ),
    );
  }
}
