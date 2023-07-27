//
//  Extensions.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import Foundation
import UIKit
import SwiftUI


extension Color {
    public static var darkBlue: Color {
        return Color(uiColor: UIColor(red: 3/255, green: 49/255, blue: 75/255, alpha: 1.0))
    }
    public static var lightBlue: Color {
        return Color(uiColor: UIColor(red: 75/255, green: 229/255, blue: 235/255, alpha: 1.0))
    }
    
    public static var weirdPink: Color {
        return Color(uiColor: UIColor(red: 240/255, green: 46/255, blue: 117/255, alpha: 1.0))
    }
    
    public static var darkGray: Color {
        return Color(uiColor: UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 0.7))
    }
    public static var lowOp: Color {
        return Color(uiColor: UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 0.1))
    }
    public static var brightPink: Color {
        return Color(uiColor: UIColor(red: 250/255, green: 0/255, blue: 255/255, alpha: 1.0))
    }
}




extension Array where Element == CGFloat {
    var normalizedValues: [CGFloat] {
        if let min = self.min(), let max = self.max() {
            return self.map({($0 - min)/(max-min)})
        }
        return []
    }
}
