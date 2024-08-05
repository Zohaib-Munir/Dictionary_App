import 'package:dictionary_app/constants/app_strings.dart';
import 'package:dictionary_app/constants/colors.dart';
import 'package:dictionary_app/state/word_state_widget.dart';
import 'package:dictionary_app/widgets/custom_button.dart';
import 'package:dictionary_app/widgets/custom_card.dart';
import 'package:dictionary_app/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          AppStrings.appTitle,
          style: appTheme.textTheme.titleLarge,
        ),
      ),
      body: Column(
        children: <Widget>[
          CustomInputField(
            textEditingController: textEditingController,
          ),
          Container(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CustomButton(
                  onPressed: () {
                    final text = textEditingController.text;
                    final state = WordStateWidget.of(context);
                    state?.searchWord(text);
                  },
                  title: const Icon(
                    Icons.near_me,
                    color: AppColors.fillColor,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
          const CustomCard(),
        ],
      ),
    );
  }
}
