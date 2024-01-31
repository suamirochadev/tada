import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:tada/controller/login_controller.dart';
import 'package:tada/screens/list_screen.dart';
import 'package:tada/widgets/custom_icon_button.dart';
import 'package:tada/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = LoginController();

  late ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();

    disposer = when((_) => controller.logado, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const ListScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Observer(builder: (_) {
                    return CustomTextField(
                      hint: 'E-mail',
                      prefix: const Icon(Icons.account_circle),
                      textInputType: TextInputType.emailAddress,
                      onChanged: controller.setEmail,
                      enabled: !controller.loading,
                    );
                  }),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  Observer(builder: (_) {
                    return CustomTextField(
                      hint: 'Senha',
                      prefix: const Icon(Icons.lock),
                      obscure: controller.senhaVisivel,
                      onChanged: controller.setSenha,
                      enabled: !controller.loading,
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: controller.senhaVisivel
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onTap: controller.toggleSenhaVisivel,
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  Observer(builder: (_) {
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                        textStyle: const TextStyle(color: Colors.white),
                        padding: const EdgeInsets.all(12),
                      ),
                      onPressed: controller.formForValido
                          ? () {
                              controller.login();
                              // Navigator.of(context).pushReplacement(
                              //   MaterialPageRoute(
                              //       builder: (_) => const ListScreen()),
                              // );
                            }
                          : null,
                      child: controller.loading
                          ? const SizedBox(
                              width: 15,
                              height: 15,
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation(Colors.white),
                              ))
                          : const Text('Login'),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }
}
