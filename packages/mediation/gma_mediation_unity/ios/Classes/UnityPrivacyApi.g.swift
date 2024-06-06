// Autogenerated from Pigeon (v18.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}
/// The generated classes set the channels to call the methods in the corresponding kotlin UnityPrivacyApi interface and swift UnityPrivacyApi protocol from the dart layer.
///
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol UnityPrivacyApi {
  /// Used to configure GDPR consent on the Android or iOS Unity SDK
  func setGDPRConsent(gdprConsent: Bool) throws
  /// Used to configure CCPA consent on the Android or iOS Unity SDK
  func setCCPAConsent(ccpaConsent: Bool) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class UnityPrivacyApiSetup {
  /// The codec used by UnityPrivacyApi.
  /// Sets up an instance of `UnityPrivacyApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: UnityPrivacyApi?, messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    /// Used to configure GDPR consent on the Android or iOS Unity SDK
    let setGDPRConsentChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_unity.UnityPrivacyApi.setGDPRConsent\(channelSuffix)", binaryMessenger: binaryMessenger)
    if let api = api {
      setGDPRConsentChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let gdprConsentArg = args[0] as! Bool
        do {
          try api.setGDPRConsent(gdprConsent: gdprConsentArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setGDPRConsentChannel.setMessageHandler(nil)
    }
    /// Used to configure CCPA consent on the Android or iOS Unity SDK
    let setCCPAConsentChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_unity.UnityPrivacyApi.setCCPAConsent\(channelSuffix)", binaryMessenger: binaryMessenger)
    if let api = api {
      setCCPAConsentChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let ccpaConsentArg = args[0] as! Bool
        do {
          try api.setCCPAConsent(ccpaConsent: ccpaConsentArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setCCPAConsentChannel.setMessageHandler(nil)
    }
  }
}
