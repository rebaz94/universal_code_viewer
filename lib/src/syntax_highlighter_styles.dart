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

import 'package:flutter/material.dart';

class SyntaxHighlighterStyles {
  static const vscodeLight = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF333333)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0000FF)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF007FAA)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF795E26)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF001080)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFA31515)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFF098658)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF008000)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF800000)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF007FAA)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    backgroundColor: Color(0xFFFFFFFF),
  );

  static const vscodeDark = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Colors.white70),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF569CD6)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF4EC9B0)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFDCDCAA)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9CDCFE)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFCE9178)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB5CEA8)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6A9955)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF569CD6)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9CDCFE)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    backgroundColor: Color(0xFF1E1E1E),
  );

  static const universalCodeHighlighter = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF5A5A5A)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0000FF)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF007700)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF007700)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF795E26)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFDD1144)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0000DD)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF008800)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0000FF)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFDDBB00)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF555555)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF333333)),
    backgroundColor: Color(0xFFF5F5F5),
  );

  static const githubLight = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF24292E)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd73a49)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6f42c1)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6f42c1)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF005cc5)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF032f62)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFF005cc5)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6a737d)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF22863a)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6f42c1)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd73a49)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF24292E)),
    backgroundColor: Colors.white,
  );

  static const githubDark = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Colors.white),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf97583)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd19a66)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd19a66)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFFabb2bf)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF98c379)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd19a66)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF5c6370)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF56b6c2)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe06c75)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFc678dd)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFabb2bf)),
    backgroundColor: Color(0xFF24292e),
  );

  static const atomOneLight = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF000000)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFa626a4)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe45649)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe45649)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF986801)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF50a14f)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFF986801)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFFa0a1a7)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF4078f2)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF986801)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0184bc)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF383a42)),
    backgroundColor: Color(0xFFfafafa),
  );

  static const monokaiPro = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF75715e)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf92672)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFa6e22e)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF66d9ef)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFFfd971f)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe6db74)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFae81ff)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF75715e)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf92672)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF66d9ef)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf92672)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf8f8f2)),
    backgroundColor: Color(0xFF272822),
  );

  // Featured Themes
  static const duotoneDarkSea = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF708284)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF7E9DA2)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF688B96)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF688B96)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF77A8BD)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFA1C0CF)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFA1C0CF)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF52676F)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF77A8BD)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF688B96)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF708284)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF708284)),
    backgroundColor: Color(0xFF2B2A3D),
  );

  static const vue = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFC586C0)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF4EC9B0)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFDCDCAA)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9CDCFE)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFCE9178)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB5CEA8)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6A9955)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF569CD6)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9CDCFE)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4D4D4)),
    backgroundColor: Color(0xFF1E1E1E),
  );

  // Other Themes
  static const ayuDark = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFABA8A2)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF36A3D9)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF29718)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF29718)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFFE6B673)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF86B300)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD4BFFF)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF5C6773)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF36A3D9)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF29718)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF36A3D9)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFABB2BF)),
    backgroundColor: Color(0xFF0A0E14),
  );

  static const draculaTheme = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF8F8F2)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF8BE9FD)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFF79C6)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFF79C6)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF8BE9FD)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFA3BE8C)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFBD93F9)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF6272A4)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFF79C6)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF50FA7B)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFFB86C)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF8F8F2)),
    backgroundColor: Color(0xFF282A36),
  );
}

class SyntaxStyle {
  final double lineHeight;
  final TextStyle baseStyle;
  final TextStyle keywordStyle;
  final TextStyle classStyle;
  final TextStyle methodStyle;
  final TextStyle variableStyle;
  final TextStyle stringStyle;
  final TextStyle numberStyle;
  final TextStyle commentStyle;
  final TextStyle tagStyle;
  final TextStyle attributeStyle;
  final TextStyle operatorStyle;
  final TextStyle punctuationStyle;
  final Color backgroundColor;

  const SyntaxStyle({
    this.lineHeight = 28,
    required this.baseStyle,
    required this.keywordStyle,
    required this.classStyle,
    required this.methodStyle,
    required this.variableStyle,
    required this.stringStyle,
    required this.numberStyle,
    required this.commentStyle,
    required this.tagStyle,
    required this.attributeStyle,
    required this.operatorStyle,
    required this.punctuationStyle,
    required this.backgroundColor,
  });

  SyntaxStyle copyWith({
    TextStyle? baseStyle,
    TextStyle? keywordStyle,
    TextStyle? classStyle,
    TextStyle? methodStyle,
    TextStyle? variableStyle,
    TextStyle? stringStyle,
    TextStyle? numberStyle,
    TextStyle? commentStyle,
    TextStyle? tagStyle,
    TextStyle? attributeStyle,
    TextStyle? operatorStyle,
    TextStyle? punctuationStyle,
    Color? backgroundColor,
  }) {
    return SyntaxStyle(
      baseStyle: baseStyle ?? this.baseStyle,
      keywordStyle: keywordStyle ?? this.keywordStyle,
      classStyle: classStyle ?? this.classStyle,
      methodStyle: methodStyle ?? this.methodStyle,
      variableStyle: variableStyle ?? this.variableStyle,
      stringStyle: stringStyle ?? this.stringStyle,
      numberStyle: numberStyle ?? this.numberStyle,
      commentStyle: commentStyle ?? this.commentStyle,
      tagStyle: tagStyle ?? this.tagStyle,
      attributeStyle: attributeStyle ?? this.attributeStyle,
      operatorStyle: operatorStyle ?? this.operatorStyle,
      punctuationStyle: punctuationStyle ?? this.punctuationStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  /// Sets the background color for the code block.
  SyntaxStyle withFontSize(double fontSize) {
    return SyntaxStyle(
      baseStyle: baseStyle.copyWith(fontSize: fontSize),
      keywordStyle: keywordStyle.copyWith(fontSize: fontSize),
      classStyle: classStyle.copyWith(fontSize: fontSize),
      methodStyle: methodStyle.copyWith(fontSize: fontSize),
      variableStyle: variableStyle.copyWith(fontSize: fontSize),
      stringStyle: stringStyle.copyWith(fontSize: fontSize),
      numberStyle: numberStyle.copyWith(fontSize: fontSize),
      commentStyle: commentStyle.copyWith(fontSize: fontSize),
      tagStyle: tagStyle.copyWith(fontSize: fontSize),
      attributeStyle: attributeStyle.copyWith(fontSize: fontSize),
      operatorStyle: operatorStyle.copyWith(fontSize: fontSize),
      punctuationStyle: punctuationStyle.copyWith(fontSize: fontSize),
      backgroundColor: backgroundColor,
    );
  }

  /// Sets the font family for all text styles.
  SyntaxStyle withFontFamily(String fontFamily) {
    return SyntaxStyle(
      baseStyle: baseStyle.copyWith(fontFamily: fontFamily),
      keywordStyle: keywordStyle.copyWith(fontFamily: fontFamily),
      classStyle: classStyle.copyWith(fontFamily: fontFamily),
      methodStyle: methodStyle.copyWith(fontFamily: fontFamily),
      variableStyle: variableStyle.copyWith(fontFamily: fontFamily),
      stringStyle: stringStyle.copyWith(fontFamily: fontFamily),
      numberStyle: numberStyle.copyWith(fontFamily: fontFamily),
      commentStyle: commentStyle.copyWith(fontFamily: fontFamily),
      tagStyle: tagStyle.copyWith(fontFamily: fontFamily),
      attributeStyle: attributeStyle.copyWith(fontFamily: fontFamily),
      operatorStyle: operatorStyle.copyWith(fontFamily: fontFamily),
      punctuationStyle: punctuationStyle.copyWith(fontFamily: fontFamily),
      backgroundColor: backgroundColor,
    );
  }

  /// A light theme inspired by the Solarized color palette.
  static const tailwindCSS = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF4A5568)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF4299E1)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9F7AEA)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9F7AEA)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF2B6CB0)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF2C7A7B)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFE53E3E)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFFCBD5E0)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF319795)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD53F8C)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF718096)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF718096)),
    backgroundColor: Color(0xFFF7FAFC),
  );

  /// A light theme inspired by the Solarized color palette.
  static const monochrome = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF757575)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF000000)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF424242)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF424242)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF616161)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF757575)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFF424242)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF9E9E9E)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFF212121)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF424242)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF757575)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFBDBDBD)),
    backgroundColor: Color(0xFFE0E0E0),
  );

  /// A light theme inspired by the Chrome DevTools.
  static const chrome = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF000000)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD50000)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF0D47A1)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF1A237E)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF004D40)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF004D40)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFF57F17)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF616161)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFD50000)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF1A237E)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF01579B)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF01579B)),
    backgroundColor: Color(0xFFFFFFFF),
  );

  /// A dark theme inspired by the Dracula color palette.
  static const laserWave = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFE1DDEC)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFF7EDB)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB620E0)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB620E0)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF1BDEA5)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF87E22E)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFFF7EDB)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB198FF)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFB620E0)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF87E22E)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFE1DDEC)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFE1DDEC)),
    backgroundColor: Color(0xFF262335),
  );

  /// A dark theme inspired by the One Dark Pro color palette.
  static const poimandres = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd1d1e9)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF7fdbca)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf7768e)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf7768e)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF7fdbca)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFb4f9f8)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf7768e)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF565f89)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFff9e64)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFff9e64)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd1d1e9)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd1d1e9)),
    backgroundColor: Color(0xFF292d3e),
  );

  /// A light theme inspired by the Dawn color palette.
  static const dawn = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFF575279)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFF907aa9)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFc4a7e7)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFc4a7e7)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFF907aa9)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFF8bd5ca)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf2ce00)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF727169)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFf2ce00)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFc4a7e7)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFF575279)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFF575279)),
    backgroundColor: Color(0xFFF7F3F7),
  );

  /// A dark theme inspired by the Aurora color palette.
  static const auroraX = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFced4e6)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFbf88cc)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFF78dce8)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFF78dce8)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFFff6188)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFa9dc76)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFffd866)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF727169)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFbf88cc)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFF78dce8)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFced4e6)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFced4e6)),
    backgroundColor: Color(0xFF2b2d3d),
  );

  /// A dark theme inspired by the Everforest color palette.
  static const everforestDark = SyntaxStyle(
    baseStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd3c6aa)),
    keywordStyle: TextStyle(fontSize: 14.0, color: Color(0xFFa7c080)),
    classStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd699b6)),
    methodStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd699b6)),
    variableStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe67e80)),
    stringStyle: TextStyle(fontSize: 14.0, color: Color(0xFFbae67e)),
    numberStyle: TextStyle(fontSize: 14.0, color: Color(0xFFe6c384)),
    commentStyle: TextStyle(fontSize: 14.0, color: Color(0xFF868d80)),
    tagStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd699b6)),
    attributeStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd699b6)),
    operatorStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd3c6aa)),
    punctuationStyle: TextStyle(fontSize: 14.0, color: Color(0xFFd3c6aa)),
    backgroundColor: Color(0xFF2b3339),
  );
}
