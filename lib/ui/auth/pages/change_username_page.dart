import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/vertical_space.dart';

class ChangeUsernamePage extends StatefulWidget {
  const ChangeUsernamePage({super.key, required this.username});
  final String username;

  @override
  State<ChangeUsernamePage> createState() => _ChangeUsernamePageState();
}

class _ChangeUsernamePageState extends State<ChangeUsernamePage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _usernameController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _usernameController = TextEditingController(text: widget.username);
  }

  @override
  void dispose() {
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(DimenConstants.pagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "CHANGE USERNAME",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const VerticalSpace(space: 10),
              Text(
                "Pick username for your account. You can always change it later",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black.withOpacity(0.7),
                    ),
              ),
              const VerticalSpace(space: 14),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ),
              ),
              const VerticalSpace(space: 14),
              PrimaryButton(
                onPressed: () {},
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
