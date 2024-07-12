// ignore_for_file: use_build_context_synchronously

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "../components/login_button.dart";
import "../components/my_text_field.dart";
import "../components/square_tile.dart";

import "login_page.dart";
import "shop_page.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //função criar usuário
  void signUserUp() async {
    // loading
    showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        });

    // Tentativa de criação de usuário
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        showErrorMessage("As senhas não conferem");
      }
      Navigator.pop(context);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const ShopPage()));
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(message),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 190, 141),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text("Criar Conta")),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 25),

                  //logo
                  Image.asset('assets/logo.png', width: 200, height: 200),

                  const SizedBox(height: 25),

                  //bem vindo
                  Text("Vamos criar uma conta para você!",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      )),
                  const SizedBox(height: 25),
                  //usuario
                  MyTextField(
                    controller: emailController,
                    hintText: "E-mail",
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  //senha
                  MyTextField(
                    controller: passwordController,
                    hintText: "Senha",
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),

                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: "Confirmar senha",
                    obscureText: true,
                  ),

                  const SizedBox(height: 25),
                  //Botão entrar:
                  LoginButton(onTap: signUserUp, text: "Criar conta"),
                  const SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.10,
                            color: Color.fromARGB(255, 118, 82, 82),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "ou",
                            style: TextStyle(
                                color: Color.fromARGB(255, 23, 23, 23)),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.10,
                            color: Color.fromARGB(255, 118, 82, 82),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(
                        imagePath:
                            "https://firebasestorage.googleapis.com/v0/b/lojaflutter-eb396.appspot.com/o/google.png?alt=media&token=b24fc128-4c83-43e2-9c7d-be5fa5b2c939",
                        onTap: () {},
                      ),
                      const SizedBox(width: 25),
                      SquareTile(
                        imagePath:
                            "https://firebasestorage.googleapis.com/v0/b/lojaflutter-eb396.appspot.com/o/apple.png?alt=media&token=7fd41f4a-f965-495b-99ca-41129cc5b6ed",
                        onTap: () {},
                      )
                    ],
                  ),

                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Já possui uma conta?",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            "Faça login",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
