import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/provider/provider_theme.dart';
import '../widgets/login/login_body.dart';
import '../widgets/login/login_bottom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textEditingControllerEmail =
      TextEditingController();
  TextEditingController _textEditingControllerPassword =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: provider.appBarColor,
          elevation: 0,
          iconTheme: provider.appBarButtonColor,
          actions: [
            SizedBox(
              width: 100,
              child: TextButton(
                onPressed: () {
                  provider.changeTheme();
                },
                child: Text("Tema Değiş"),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LoginPageBody(
                    size: size,
                    providerTheme: provider,
                    textEditingControllerEmail: _textEditingControllerEmail,
                    textEditingControllerPassword:
                        _textEditingControllerPassword),
                const SizedBox(
                  height: 100,
                ),
                LoginPageBottomButton(provider: provider, size: size)
              ],
            ),
          ),
        ));
  }
}