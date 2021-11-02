import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final void Function() onPress;
  final String title;
  const LoginButton({Key? key, required this.onPress, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xFF6078ea),
              Color(0xFF17ead9),
            ]),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                onPress();
              },
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
              ),
            ),
          )),
    );
  }
}
