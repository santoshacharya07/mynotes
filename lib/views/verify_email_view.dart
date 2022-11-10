import 'package:flutter/material.dart';
import 'package:mycounter/constants/routes.dart';
import 'package:mycounter/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify Eamil')),
      body: Column(
        children: [
          const Text(
              " We've sent you verification. Please open it to verify your account"),
          const Text(
              "If You haven't received verification email yet, press the button below"),
          TextButton(
            onPressed: () async {
              await AuthService.firebasae().sendEmailVerification();
            },
            child: const Text('Send Email Verification'),
          ),
          TextButton(
              onPressed: () async {
                AuthService.firebasae().logOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  registerRoute,
                  (route) => false,
                );
              },
              child: const Text('Restart'))
        ],
      ),
    );
  }
}
