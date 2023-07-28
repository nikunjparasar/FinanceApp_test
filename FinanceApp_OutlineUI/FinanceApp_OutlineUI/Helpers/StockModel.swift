//
//  StockModel.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/27/23.
//

import Foundation

struct StockModel: Hashable {
    let symbol: String
    let description: String?
    let currentPrice: Double?
    let percentageChange: Double?
    let candles: [CGFloat]
}
