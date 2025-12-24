import Foundation
import SwiftUI

/// A configuration for `focusOnAppear` modifier.
public struct Configuration {
    /// Configure the keyboard type for the input field when `focusOnAppear` is applied.
    public let keyboardType: KeyboardType
    /// Configure the return key type for the input field when `focusOnAppear` is applied.
    public let returnKeyType: ReturnKeyType
    /// A Boolean value that indicates whether the input field is `SecureField`.
    public let isSecure: Bool
    /// Configure the language of the keyboard
    public let languageCode: String?
    /// If autocorrection is disabled, the predictive text bar will not appear above the keyboard.
    public let autocorrectionType: UITextAutocorrectionType
    /// If autocapitalization is disabled, the keyboard will appear with lowercase letters initially.
    public let autocapitalizationType: UITextAutocapitalizationType
    /// Configure the keyboard appearance for the input field when `focusOnAppear` is applied.
    public let keyboardAppearance: UIKeyboardAppearance

    /// Initialize `Configuration` with the given parameters.
    public init(
        keyboardType: KeyboardType = .default,
        returnKeyType: ReturnKeyType = .default,
        isSecure: Bool = false,
        languageCode: String? = nil,
        autocorrectionType: UITextAutocorrectionType = .default,
        autocapitalizationType: UITextAutocapitalizationType = .sentences,
        keyboardAppearance: UIKeyboardAppearance = .default,
    ) {
        self.keyboardType = keyboardType
        self.returnKeyType = returnKeyType
        self.isSecure = isSecure
        self.languageCode = languageCode
        self.autocorrectionType = autocorrectionType
        self.autocapitalizationType = autocapitalizationType
        self.keyboardAppearance = keyboardAppearance
    }

    /// The default configuration for `focusOnAppear`.
    static public let `default` = Configuration()
}
