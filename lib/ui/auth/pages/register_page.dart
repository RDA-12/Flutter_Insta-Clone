import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/vertical_space.dart';
import '../widgets/info_action.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _phoneController;
  late final TextEditingController _emailController;
  String _phone = "";
  String _email = "";

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController.addListener(() {
      setState(() {
        _phone = _phoneController.text;
      });
    });
    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(DimenConstants.pagePadding),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
                child: const CircleAvatar(
                  child: Icon(
                    Icons.person_outline,
                  ),
                ),
              ),
              const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: "PHONE",
                  ),
                  Tab(
                    text: "EMAIL",
                  ),
                ],
              ),
              const VerticalSpace(space: 12),
              Expanded(
                child: Form(
                  key: _formKey,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            controller: _phoneController,
                            decoration: const InputDecoration(
                              hintText: "Phone",
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const VerticalSpace(space: 14),
                          Text(
                            "You may receive SMS notifications from us for security and login purposes.",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const VerticalSpace(space: 14),
                          PrimaryButton(
                            onPressed: _phone == ""
                                ? null
                                : () {
                                    context.router.push(
                                      PhoneConfRoute(phoneNumber: _phone),
                                    );
                                  },
                            text: "Next",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: "Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const VerticalSpace(space: 14),
                          PrimaryButton(
                            onPressed: _email == ""
                                ? null
                                : () {
                                    context.router.push(
                                      EmailConfRoute(email: _email),
                                    );
                                  },
                            text: "Next",
                          ),
                        ],
                      ),
                    ],
                  ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
