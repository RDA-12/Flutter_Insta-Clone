import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/secondary_button.dart';
import '../../widgets/vertical_space.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key});

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  final List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "Mei",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Des",
  ];
  final List<String> years = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(DimenConstants.pagePadding),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AssetConstants.birthdayCakeIc,
                      height: 64,
                      width: 64,
                    ),
                    const VerticalSpace(space: 12),
                    Text(
                      "Add your birthday",
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.black,
                              ),
                    ),
                    const VerticalSpace(space: 10),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "This won't be part of your public profile.\n",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                        children: [
                          TextSpan(
                            text: "Why do I need to provide my birthday?",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpace(space: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "January 11, 2022",
                      ),
                      readOnly: true,
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    PrimaryButton(
                      onPressed: () {
                        context.router.push(
                          ChangeUsernameRoute(username: "username"),
                        );
                      },
                      text: "Next",
                    ),
                    SecondaryButton(
                      onPressed: () {},
                      text: "Enter age instead",
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: months.length,
                        itemBuilder: (context, index) {
                          return Text(months[index]);
                        },
                      ),
                    ),
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
