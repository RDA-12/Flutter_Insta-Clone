import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/horizontal_space.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/secondary_button.dart';
import '../../widgets/vertical_space.dart';
import '../widgets/info_action.dart';

class PhoneConfPage extends StatefulWidget {
  const PhoneConfPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<PhoneConfPage> createState() => _PhoneConfPageState();
}

class _PhoneConfPageState extends State<PhoneConfPage> {
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
                      Text(
                        "Enter the Confirmation Code We Sent to ${widget.phoneNumber}",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SecondaryButton(
                            onPressed: () {},
                            text: "Change phone number",
                          ),
                          const HorizontalSpace(space: 5),
                          const Text(
                            "or",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const HorizontalSpace(space: 5),
                          SecondaryButton(
                            onPressed: () {},
                            text: "resend SMS",
                          ),
                        ],
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
