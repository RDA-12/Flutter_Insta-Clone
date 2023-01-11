import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/vertical_space.dart';
import '../widgets/info_action.dart';

class EmailConfPage extends StatefulWidget {
  const EmailConfPage({super.key, required this.email});
  final String email;

  @override
  State<EmailConfPage> createState() => _EmailConfPageState();
}

class _EmailConfPageState extends State<EmailConfPage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _codeController;
  String _loginCode = "";

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _codeController = TextEditingController();
    _codeController.addListener(() {
      setState(() {
        _loginCode = _codeController.text;
      });
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(DimenConstants.pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        "ENTER CONFIRMATION CODE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const VerticalSpace(space: 12),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                          children: [
                            TextSpan(
                              text:
                                  "Enter the confirmation code we sent to ${widget.email}. ",
                            ),
                            TextSpan(
                              text: "Resend Code",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            )
                          ],
                        ),
                      ),
                      const VerticalSpace(space: 14),
                      TextFormField(
                        controller: _codeController,
                        decoration: const InputDecoration(
                          hintText: "Login code",
                        ),
                      ),
                      const VerticalSpace(space: 14),
                      PrimaryButton(
                        onPressed: _loginCode == ""
                            ? null
                            : () {
                                context.router.push(
                                  const NamePasswordRoute(),
                                );
                              },
                        text: "Next",
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Divider(
                      thickness: 1,
                    ),
                    InfoAction(
                      textInfo: "Already have an account? ",
                      actionText: "Log In.",
                      onActionTextPressed: () {
                        context.router.replaceAll(
                          const [
                            LoginRoute(),
                            RegisterRoute(),
                            OnBoardingRoute(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
