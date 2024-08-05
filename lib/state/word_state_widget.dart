import 'package:dictionary_app/model/word.dart';
import 'package:dictionary_app/services/word_api.dart';
import 'package:dictionary_app/state/word_provider.dart';
import 'package:flutter/material.dart';

class WordStateWidget extends StatefulWidget {
  final WordApi apiService;
  final Widget child;
  const WordStateWidget({
    super.key,
    required this.apiService,
    required this.child,
  });

  static _WordStateWidgetState? of(BuildContext context) {
    return context.findAncestorStateOfType<_WordStateWidgetState>();
  }

  @override
  State<WordStateWidget> createState() => _WordStateWidgetState();
}

class _WordStateWidgetState extends State<WordStateWidget> {
  Word? _currentWord;

  void searchWord(String query) async {
    final word = await widget.apiService.fetchWord(word: query);
    setState(() {
      _currentWord = word;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WordProvider(word: _currentWord, child: widget.child);
  }
}
