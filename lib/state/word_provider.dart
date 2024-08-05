import 'package:dictionary_app/model/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WordProvider extends InheritedWidget {
  final Word? word;

  const WordProvider({
    Key? key,
    required this.word,
    required Widget child,
  }) : super(key: key, child: child);

  static WordProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<WordProvider>();
  }

  @override
  bool updateShouldNotify(covariant WordProvider oldWidget) {
    return word != oldWidget.word;
  }
}
