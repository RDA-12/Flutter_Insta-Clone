import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/secondary_button.dart';
import '../../widgets/vertical_space.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(DimenConstants.pagePadding),
          child: Column(
            children: [
              const Text("English (United States)"),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AssetConstants.logoSvg),
                    const VerticalSpace(space: 52),
                    PrimaryButton(
                      onPressed: () {
                        context.router.push(const RegisterRoute());
                      },
                      text: "Create new account",
                    ),
                    const VerticalSpace(space: 18),
                    SecondaryButton(
                      onPressed: () {
                        context.router.push(const LoginRoute());
                      },
                      text: "Log In",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
