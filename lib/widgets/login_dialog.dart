import 'package:flutter/material.dart';
import 'package:shopping_app_screen/pages/home_screen.dart';

class LoginDialog extends StatelessWidget {
  const LoginDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Well Done !"),
      content: const Text("Accounted created successfully"),
      actions: [
        OutlinedButton(
          onPressed: (){
            // for closing the dialog.
            Navigator.pop(context);
            // Navigation to home screen.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const HomeScreen())
            );
          },
          child: const Text('close')
        )
      ],
    );
  }
}
