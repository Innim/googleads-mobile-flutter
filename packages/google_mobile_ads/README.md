# Google Mobile Ads for Flutter

This is [fork](https://github.com/Innim/googleads-mobile-flutter) of `google_mobile_ads`.

Differences from the original plugin:

* On Android [GMA Next-Gen SDK](https://developers.google.com/admob/android/next-gen) is used by default.
  To get back to the classic SDK, pass `--dart-define=USE_NEXT_GEN_SDK=false` to the build command
  or set `googleMobileAds.useNextGenSdk=false` in `android/gradle.properties` of the app.
* On Android a `LinkageError` thrown while handling a method call is returned to Dart as an error.
* On iOS the plugin can be built as a framework (`use_frameworks!`).

[![google_mobile_ads](https://github.com/googleads/googleads-mobile-flutter/actions/workflows/google_mobile_ads.yaml/badge.svg)](https://github.com/googleads/googleads-mobile-flutter/actions/workflows/google_mobile_ads.yaml)

This repository contains the source code for the Google Mobile Ads Flutter
plugin, which enables publishers to monetize [Flutter](https://flutter.dev/)
apps using the Google Mobile Ads SDK. 

## Documentation

For instructions on how to use the plugin, please refer to the developer guides
for [AdMob](https://developers.google.com/admob/flutter/quick-start) and
[Ad Manager](https://developers.google.com/ad-manager/mobile-ads-sdk/flutter/quick-start).

## Downloads

See [pub.dev](https://pub.dev/packages/google_mobile_ads/versions) for the
latest releases of the plugin.

## Suggesting improvements

To file bugs, make feature requests, or to suggest other improvements, please
use [github's issue tracker](https://github.com/googleads/googleads-mobile-flutter/issues).


## Other resources

* [AdMob help center](https://support.google.com/admob/?hl=en#topic=7383088)
* [Ad Manager help center](https://support.google.com/admanager/?hl=en#topic=7505988)

## License

[Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0)