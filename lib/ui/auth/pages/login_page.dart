import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/vertical_space.dart';
import '../widgets/info_action.dart';
import '../widgets/texted_divider.dart';
import '../widgets/texted_icon_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(DimenConstants.pagePadding),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AssetConstants.logoSvg),
                    const VerticalSpace(space: 40),
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        hintText: "Phone number, email or username",
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
                    const PrimaryButton(
                      onPressed: null,
                      text: "Log In",
                    ),
                    const VerticalSpace(space: 12),
                    InfoAction(
                      textInfo: "Forgot your login details? ",
                      actionText: "Get help logging in.",
                      onActionTextPressed: () {},
                    ),
                    const VerticalSpace(space: 12),
                    const TextedDivider(text: "OR"),
                    const VerticalSpace(space: 12),
                    TextedIconButton(
                      text: "Log In with Facebook",
                      iconPath: AssetConstants.facebookIc,
                      textColor: Colors.blue,
                      onPressed: () {},
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
                    textInfo: "Don't have an account? ",
                    actionText: "Sign up.",
                    onActionTextPressed: () {
                      context.router.replaceAll(
                        const [
                          OnBoardingRoute(),
                          LoginRoute(),
                          RegisterRoute(),
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
    );
  }
}
