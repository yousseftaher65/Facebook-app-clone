import 'package:flutter/material.dart';

class PostField extends StatelessWidget {
  const PostField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(11, 18, 15, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profile/kilyan_mbappe.jpg',
              fit: BoxFit.fitWidth,
              width: 45,
              height: 45,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: 'What\'s On Your Mind',
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(
                    0xff898F9C,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.transparent, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Color(0xff898F9C), width: 2),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/icons/Photos.png',
          ),
        ],
      ),
    );
  }
}
