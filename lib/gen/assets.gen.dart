/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Icon_arrow_down_left.svg
  SvgGenImage get iconArrowDownLeft =>
      const SvgGenImage('assets/icons/Icon_arrow_down_left.svg');

  /// File path: assets/icons/Icon_connect.svg
  SvgGenImage get iconConnect =>
      const SvgGenImage('assets/icons/Icon_connect.svg');

  /// File path: assets/icons/Icon_explore.svg
  SvgGenImage get iconExplore =>
      const SvgGenImage('assets/icons/Icon_explore.svg');

  /// File path: assets/icons/Icon_scan.svg
  SvgGenImage get iconScan => const SvgGenImage('assets/icons/Icon_scan.svg');

  /// File path: assets/icons/Icon_vector_right.svg
  SvgGenImage get iconVectorRight =>
      const SvgGenImage('assets/icons/Icon_vector_right.svg');

  /// File path: assets/icons/icon_arrow_up_right.svg
  SvgGenImage get iconArrowUpRight =>
      const SvgGenImage('assets/icons/icon_arrow_up_right.svg');

  /// File path: assets/icons/icon_btc.svg
  SvgGenImage get iconBtc => const SvgGenImage('assets/icons/icon_btc.svg');

  /// File path: assets/icons/icon_dell.svg
  SvgGenImage get iconDell => const SvgGenImage('assets/icons/icon_dell.svg');

  /// File path: assets/icons/icon_eth.svg
  SvgGenImage get iconEth => const SvgGenImage('assets/icons/icon_eth.svg');

  /// File path: assets/icons/icon_external_link.svg
  SvgGenImage get iconExternalLink =>
      const SvgGenImage('assets/icons/icon_external_link.svg');

  /// File path: assets/icons/icon_percent.svg
  SvgGenImage get iconPercent =>
      const SvgGenImage('assets/icons/icon_percent.svg');

  /// File path: assets/icons/icon_search.svg
  SvgGenImage get iconSearch =>
      const SvgGenImage('assets/icons/icon_search.svg');

  /// File path: assets/icons/icon_solana.svg
  SvgGenImage get iconSolana =>
      const SvgGenImage('assets/icons/icon_solana.svg');

  /// File path: assets/icons/icon_spend.svg
  SvgGenImage get iconSpend => const SvgGenImage('assets/icons/icon_spend.svg');

  /// File path: assets/icons/icon_tezos.svg
  SvgGenImage get iconTezos => const SvgGenImage('assets/icons/icon_tezos.svg');

  /// File path: assets/icons/icon_vector_left.svg
  SvgGenImage get iconVectorLeft =>
      const SvgGenImage('assets/icons/icon_vector_left.svg');

  /// File path: assets/icons/icon_wallet.svg
  SvgGenImage get iconWallet =>
      const SvgGenImage('assets/icons/icon_wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconArrowDownLeft,
        iconConnect,
        iconExplore,
        iconScan,
        iconVectorRight,
        iconArrowUpRight,
        iconBtc,
        iconDell,
        iconEth,
        iconExternalLink,
        iconPercent,
        iconSearch,
        iconSolana,
        iconSpend,
        iconTezos,
        iconVectorLeft,
        iconWallet
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_elon_musk.png
  AssetGenImage get imageElonMusk =>
      const AssetGenImage('assets/images/image_elon_musk.png');

  /// File path: assets/images/image_tezos.png
  AssetGenImage get imageTezos =>
      const AssetGenImage('assets/images/image_tezos.png');

  /// List of all assets
  List<AssetGenImage> get values => [imageElonMusk, imageTezos];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
