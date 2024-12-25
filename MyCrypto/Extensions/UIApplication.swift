//
//  UIApplication.swift
//  MyCrypto
//
//  Created by James Allen on 24/12/2024.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
