import 'package:flutter/material.dart';
import 'package:flutter_get_post_token/riverpod/riverpod_management.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class Login extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: 20.allP,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: ref.read(loginRiverpod).email,
                decoration: InputDecoration(
                  hintText: "E-Mail",
                  border: OutlineInputBorder(
                    borderRadius: 10.allBR,
                  ),
                ),
              ),
              TextField(
                controller: ref.read(loginRiverpod).password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Şifre",
                  border: OutlineInputBorder(
                    borderRadius: 10.allBR,
                  ),
                ),
              ),
              SizedBox(
                width: Grock.width,
                child: ElevatedButton(
                  onPressed: () => ref.read(loginRiverpod).fetch(),
                  child: const Text(
                    "Giriş Yap",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
