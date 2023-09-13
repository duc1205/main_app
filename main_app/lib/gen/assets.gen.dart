/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $ResourcesGen {
  const $ResourcesGen();

  $ResourcesIconsGen get icons => const $ResourcesIconsGen();
  $ResourcesImagesGen get images => const $ResourcesImagesGen();
  $ResourcesLangsGen get langs => const $ResourcesLangsGen();
}

class $ResourcesIconsGen {
  const $ResourcesIconsGen();

  /// File path: resources/icons/ic_language.png
  AssetGenImage get icLanguage => const AssetGenImage('resources/icons/ic_language.png');

  /// File path: resources/icons/ic_log out.png
  AssetGenImage get icLogOut => const AssetGenImage('resources/icons/ic_log out.png');

  /// File path: resources/icons/icon_profile.png
  AssetGenImage get iconProfile => const AssetGenImage('resources/icons/icon_profile.png');

  /// List of all assets
  List<AssetGenImage> get values => [icLanguage, icLogOut, iconProfile];
}

class $ResourcesImagesGen {
  const $ResourcesImagesGen();

  /// File path: resources/images/avatar_image.png
  AssetGenImage get avatarImage => const AssetGenImage('resources/images/avatar_image.png');

  /// File path: resources/images/image.png
  AssetGenImage get image => const AssetGenImage('resources/images/image.png');

  /// List of all assets
  List<AssetGenImage> get values => [avatarImage, image];
}

class $ResourcesLangsGen {
  const $ResourcesLangsGen();

  /// File path: resources/langs/en.json
  String get en => 'resources/langs/en.json';

  /// File path: resources/langs/vn.json
  String get vn => 'resources/langs/vn.json';

  /// List of all assets
  List<String> get values => [en, vn];
}

class Assets {
  Assets._();

  static const $ResourcesGen resources = $ResourcesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
