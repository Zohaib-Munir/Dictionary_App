import 'package:dictionary_app/constants/app_strings.dart';
import 'package:dictionary_app/constants/colors.dart';
import 'package:dictionary_app/state/word_provider.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = WordProvider.of(context);
    final word = provider?.word?.word ?? AppStrings.dummyWord;
    final meaning = provider?.word?.meaning ?? AppStrings.dummyMeaning;
    final audioFile = provider?.word?.audioFile ?? "";

    final appTheme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.4,
      width: width * 0.94,
      child: Card(
        shadowColor: AppColors.appBarColor,
        elevation: 4,
        color: AppColors.cardBackgroundColor,
        child: Container(
          padding: EdgeInsets.all(
            width * 0.04,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                word,
                style: appTheme.textTheme.bodyLarge!.copyWith(
                  fontSize: width * 0.08,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              Text(
                meaning,
                style: appTheme.textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
              Row(
                children: [
                  Text(
                    audioFile.isEmpty
                        ? AppStrings.noAudioFile
                        : AppStrings.audioFile,
                    style: appTheme.textTheme.bodyLarge!.copyWith(
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.volume_up_rounded,
                    color: AppColors.fillColor,
                    size: 28,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
