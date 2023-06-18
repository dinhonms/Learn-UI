//
//  FontStyles.swift
//  SwiftCodeKit
//
//  Created by Nonato Sousa on 17/06/23.
//

import Foundation
import SwiftUI

extension Font{
    
    static var titleFont: Font{
        return Font.custom("Blinker-Regular", size: 24)
    }
    
    static var defaultFont: Font{
        return Font.custom("Blinker-Regular", size: 12)
    }
    
    static var socialButtonFont: Font{
        return Font.custom("Blinker-SemiBold", size: 14)
    }
    
}
