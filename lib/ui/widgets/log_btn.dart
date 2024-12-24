import 'package:flutter/material.dart';

class LogBtn extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final Color textColor;
  final bool borderColor;
  final VoidCallback onClick;

  const LogBtn(
      {
      required this.onClick,
      this.borderColor = true,
      required this.btnColor,
      required this.btnText,
      required this.textColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: (){
              Future.delayed(Duration.zero, onClick);
            },
            style: ElevatedButton.styleFrom(
              overlayColor: Colors.transparent,
              fixedSize: const Size(353, 50),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(
                      color: borderColor
                          ? Colors.transparent
                          : const Color(0xff1877F2))),
              backgroundColor: btnColor,
            ),
            child: Text(
              btnText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: textColor),
            ),
          ),
        )
      ],
    );
  }
}
