/*
 * Copyright (c) 2024 CodeFusionBit. All rights reserved.
 * Author: Hitesh Sapra
 *
 * This software is the confidential and proprietary information of CodeFusionBit.
 * You shall not disclose such confidential information and shall use it only in
 * accordance with the terms of the license agreement you entered into with
 * CodeFusionBit.
 *
 * Website: https://codefusionbit.com
 * Contact: info@codefusionbit.com
 */

import 'package:flutter/services.dart';
import 'package:universal_code_viewer/universal_code_viewer.dart';
import 'package:flutter/material.dart';

/// A customizable code viewer widget that supports syntax highlighting for multiple programming languages.
///
/// The [UniversalCodeViewer] widget provides a rich code viewing experience with features like
/// syntax highlighting, line numbers, copy functionality, and customizable themes.
///
/// Example usage:
/// ```dart
/// UniversalCodeViewer(
///   code: '''
///   void main() {
///     print("Hello, World!");
///   }
///   ''',
///   style: SyntaxHighlighterStyles.vscodeDark,
///   showLineNumbers: true,
///   enableCopy: true,
/// )
/// ```
class UniversalCodeViewer extends StatefulWidget {
  /// The source code to be displayed and highlighted.
  ///
  /// This parameter accepts any string containing valid source code. The widget will
  /// automatically detect the programming language and apply appropriate syntax highlighting.
  ///
  /// Example:
  /// ```dart
  /// final code = '''
  /// function greet(name) {
  ///   console.log(`Hello, ${name}!`);
  /// }
  /// ''';
  /// ```
  final String code;

  /// The syntax highlighting style to be applied to the code.
  ///
  /// This defines the color scheme and text styles for different code elements
  /// like keywords, strings, comments, etc. You can use predefined styles from
  /// [SyntaxHighlighterStyles] or create custom ones.
  ///
  /// Built-in styles include:
  /// - [SyntaxHighlighterStyles.vscodeDark]
  /// - [SyntaxHighlighterStyles.vscodeLight]
  /// - [SyntaxHighlighterStyles.githubDark]
  /// - [SyntaxHighlighterStyles.githubLight]
  /// - And more...
  ///
  /// Example:
  /// ```dart
  /// style: SyntaxHighlighterStyles.vscodeDark
  /// ```
  final SyntaxStyle style;

  /// Whether to show line numbers on the left side of the code.
  ///
  /// When true, displays line numbers starting from 1 for each line of code.
  /// Line numbers are styled with a slightly transparent color based on the theme.
  ///
  /// Defaults to `true`.
  ///
  /// Example:
  /// ```dart
  /// showLineNumbers: true  // Shows: 1, 2, 3, ...
  /// ```
  final bool showLineNumbers;

  /// Whether to show a copy button that allows users to copy the code to clipboard.
  ///
  /// When true, displays a copy icon button in the header that, when pressed,
  /// copies the entire code to the system clipboard and shows a confirmation snackbar.
  ///
  /// Defaults to `true`.
  ///
  /// Example:
  /// ```dart
  /// enableCopy: true  // Shows copy button
  /// ```
  final bool enableCopy;

  /// Whether to show the detected programming language label in the header.
  ///
  /// When true, displays the automatically detected language (or provided custom language)
  /// in the header section of the widget.
  ///
  /// Defaults to `true`.
  ///
  /// Example:
  /// ```dart
  /// isCodeLanguageView: true  // Shows "JAVASCRIPT", "PYTHON", etc.
  /// ```
  final bool isCodeLanguageView;

  /// Optional custom language label to display instead of the auto-detected one.
  ///
  /// When provided, this string will be displayed in the header instead of
  /// the automatically detected programming language.
  ///
  /// Example:
  /// ```dart
  /// codeLanguage: "TypeScript"  // Forces "TYPESCRIPT" label
  /// ```
  final String? codeLanguage;

  /// Custom padding for the code content area.
  ///
  /// Allows customizing the padding around the code content. If not provided,
  /// defaults to `EdgeInsets.all(16)`.
  ///
  /// Example:
  /// ```dart
  /// padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16)
  /// ```
  final EdgeInsetsGeometry? padding;

  /// Custom widget to replace the default copy button.
  ///
  /// When provided, this widget will be used instead of the default copy icon button.
  /// The custom widget should handle the copy functionality internally.
  ///
  /// Example:
  /// ```dart
  /// copyWidget: TextButton(
  ///   onPressed: () => Clipboard.setData(ClipboardData(text: code)),
  ///   child: Text('Copy Code'),
  /// )
  /// ```
  final Widget? copyWidget;

  /// Creates a UniversalCodeViewer widget.
  ///
  /// The [code] and [style] parameters are required. All other parameters are optional
  /// and have sensible defaults.
  ///
  /// Example:
  /// ```dart
  /// UniversalCodeViewer(
  ///   code: 'print("Hello, World!")',
  ///   style: SyntaxHighlighterStyles.vscodeDark,
  ///   showLineNumbers: true,
  ///   enableCopy: true,
  ///   isCodeLanguageView: true,
  ///   padding: EdgeInsets.all(16),
  /// )
  /// ```

  const UniversalCodeViewer({
    super.key,
    required this.code,
    required this.style,
    this.showLineNumbers = true,
    this.enableCopy = true,
    this.isCodeLanguageView = true,
    this.codeLanguage,
    this.padding,
    this.copyWidget,
  });

  @override
  State<UniversalCodeViewer> createState() => _UniversalCodeViewerState();
}

class _UniversalCodeViewerState extends State<UniversalCodeViewer> {
  UniversalSyntaxHighlighter highlighter = UniversalSyntaxHighlighter('');
  List<String> lines = const [];
  List<Widget> lineNumbers = const [];
  List<Widget> highlightLines = const [];

  @override
  void initState() {
    super.initState();
    _buildHighlighter();
    _buildLineNumbers();
    _buildHighlightLines();
  }

  @override
  void didUpdateWidget(covariant UniversalCodeViewer oldWidget) {
    super.didUpdateWidget(oldWidget);
    final langChanged = widget.codeLanguage != oldWidget.codeLanguage;
    final codeChanged = widget.code != oldWidget.code;
    final styleChanged = widget.style != oldWidget.style;
    if (codeChanged || langChanged || styleChanged) {
      _buildHighlighter();
      _buildLineNumbers();
      _buildHighlightLines();
    }
  }

  void _buildHighlighter() {
    highlighter = UniversalSyntaxHighlighter(widget.code);
    lines = widget.code.split('\n');
  }

  void _buildLineNumbers() {
    lineNumbers = List.generate(
      lines.length,
      (index) => Container(
        height: widget.style.lineHeight,
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          '${index + 1}',
          style: widget.style.baseStyle.copyWith(
            color: widget.style.baseStyle.color?.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  void _buildHighlightLines() {
    highlightLines = List.generate(
      lines.length,
      (index) => Container(
        height: widget.style.lineHeight,
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: _buildHighlightedLine(index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final effectivePadding = widget.padding ?? const EdgeInsets.all(16);

    return Container(
      decoration: BoxDecoration(
        color: widget.style.backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: widget.style.baseStyle.color?.withOpacity(0.1) ?? Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: widget.style.baseStyle.color?.withOpacity(0.1) ?? Colors.grey,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: widget.isCodeLanguageView
                      ? Text(
                          widget.codeLanguage ?? highlighter.detectedLanguage.toUpperCase(),
                          style: widget.style.baseStyle.copyWith(
                            color: widget.style.baseStyle.color?.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        )
                      : const SizedBox(),
                ),
                if (widget.enableCopy) ...[
                  widget.copyWidget ??
                      IconButton(
                        icon: Icon(
                          Icons.copy_rounded,
                          size: 18,
                          color: widget.style.baseStyle.color?.withOpacity(0.5),
                        ),
                        tooltip: 'Copy to clipboard',
                        onPressed: () => _copyToClipboard(context),
                      ),
                ]
              ],
            ),
          ),
          Padding(
            padding: effectivePadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.showLineNumbers)
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: lineNumbers,
                    ),
                  ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SelectionArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: highlightLines,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightedLine(int lineIndex) {
    final line = lines[lineIndex];
    final List<TextSpan> spans = [];
    final int lineStart =
        lines.take(lineIndex).join('\n').length + (lineIndex > 0 ? 1 : 0); // Account for newline characters
    final int lineEnd = lineStart + line.length;

    // Get spans that intersect with this line
    final lineSpans = highlighter.spans.where((span) => span.start < lineEnd && span.end > lineStart);

    int currentPosition = 0;

    for (var span in lineSpans) {
      // Convert global positions to line positions
      final spanStartInLine = (span.start - lineStart).clamp(0, line.length);
      final spanEndInLine = (span.end - lineStart).clamp(0, line.length);

      // Add unstyled text before the span
      if (currentPosition < spanStartInLine) {
        spans.add(TextSpan(
          text: line.substring(currentPosition, spanStartInLine),
          style: widget.style.baseStyle,
        ));
      }

      // Add the styled span
      if (spanStartInLine < spanEndInLine) {
        spans.add(TextSpan(
          text: line.substring(spanStartInLine, spanEndInLine),
          style: _getStyleForType(span.type),
        ));
      }

      currentPosition = spanEndInLine;
    }

    // Add any remaining unstyled text
    if (currentPosition < line.length) {
      spans.add(TextSpan(
        text: line.substring(currentPosition),
        style: widget.style.baseStyle,
      ));
    }

    return SelectableText.rich(
      TextSpan(children: spans),
      key: ValueKey('line-$lineIndex'), // Add key for better performance
      scrollPhysics: const NeverScrollableScrollPhysics(),
    );
  }

  TextStyle _getStyleForType(String type) {
    switch (type) {
      case 'keyword':
        return widget.style.keywordStyle;
      case 'class':
        return widget.style.classStyle;
      case 'method':
        return widget.style.methodStyle;
      case 'variable':
        return widget.style.variableStyle;
      case 'string':
        return widget.style.stringStyle;
      case 'number':
        return widget.style.numberStyle;
      case 'comment':
        return widget.style.commentStyle;
      case 'tag':
        return widget.style.tagStyle;
      case 'attribute':
        return widget.style.attributeStyle;
      case 'operator':
        return widget.style.operatorStyle;
      case 'punctuation':
        return widget.style.punctuationStyle;
      default:
        return widget.style.baseStyle;
    }
  }

  Future<void> _copyToClipboard(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: widget.code));
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Code copied to clipboard'),
          backgroundColor: widget.style.backgroundColor.computeLuminance() > 0.5 ? Colors.black87 : Colors.white70,
          behavior: SnackBarBehavior.floating,
          width: 200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    }
  }
}
