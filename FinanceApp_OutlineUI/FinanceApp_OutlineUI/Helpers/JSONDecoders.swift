//
//  JSONDecoders.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/27/23.
//

import Foundation

struct Quote: Decodable {
    let c: Double
    let d: Double
    let dp: Double
    let h: Double
    let l: Double
    let o: Double
    let pc: Double
    let t: Double
}

struct StockSymbolSearch: Decodable {
    let count: Int
    let result: [StockSymbol]
}

struct StockSymbol: Decodable, Hashable {
    let description: String
    let displaySymbol: String
    let symbol: String
    let type: String
}

struct Candles: Decodable {
    let c: [Double]
}

//
//{
//    "c":193.22,
//    "d":-1.28,
//    "dp":-0.6581,
//    "h":197.2,
//    "l":192.56,
//    "o":196.02,
//    "pc":194.5,
//    "t":1690488001
//
//}
