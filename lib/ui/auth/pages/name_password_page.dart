import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/secondary_button.dart';
import '../../widgets/vertical_space.dart';

class NamePasswordPage extends StatefulWidget {
  const NamePasswordPage({super.key});

  @override
  State<NamePasswordPage> createState() => _NamePasswordPageState();
}

class _NamePasswordPageState extends State<NamePasswordPage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _nameController;
  late final TextEditingController _passwordController;
  bool _rememberPassword = false;
  String _name = "";
  String _password = "";

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController.addListener(() {
      setState(() {
        _name = _nameController.text;
      });
    });
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(DimenConstants.pagePadding),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "NAME AND PASSWORD",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const VerticalSpace(space: 14),
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          hintText: "Full name",
                        ),
                      ),
                      const VerticalSpace(space: 12),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                      const VerticalSpace(space: 12),
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberPassword,
                            onChanged: (val) {
                              setState(() {
                                _rememberPassword = val ?? false;
                              });
                            },
                          ),
                          Text(
                            "Remember password",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                      const VerticalSpace(space: 12),
                      PrimaryButton(
                        onPressed: _name == "" || _password == ""
                            ? null
                            : () {
                                context.router.replaceAll(
                                  [const BottomNav()],
                                );
                              },
                        text: "Continue and sync contacts",
                      ),
                      const VerticalSpace(space: 10),
                      SecondaryButton(
                        onPressed: _name == "" || _password == ""
                            ? null
                            : () {
                                context.router.replaceAll([const BottomNav()]);
                              },
                        text: "Continue without sync contacts",
                      ),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodySmall,
                    text:
                        "Your contacts will be periodically synced and stored on Instagram servers to help you and others find friends, and to help us provide a better service. To remove contacts, go to Settings and disconnect. ",
                    children: [
                      TextSpan(
                        text: "Learn More.",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
