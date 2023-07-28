//
//  StocksViewModel.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/27/23.
//

import Foundation


class StocksViewModel: ObservableObject {
    var tickers = ["NVDA", "TSLA", "LMT", "NFLX"]
    
    @Published var stocks: [StockModel] = [StockModel]()
    var calc = 0.0
    init() {
        self.fetchStockData()
    }
    
    
    public func fetchStockData() {
        calc = 0.0
        for ticker in tickers {
            APIRequest.instance.getSymbolLookup(searchQuery: ticker) { returnedSymbols in
                APIRequest.instance.getSymbolQuote(symbol: ticker) { returnedQuote in
                    APIRequest.instance.getCandles(symbol: ticker, hourLength: 24) { returnedCandles in
                        
                        let candleArray: [CGFloat] = returnedCandles?.c.map {CGFloat($0)} ?? []
                        
                        let stockInfo = returnedSymbols?.result[0]
                        
                        let newStock = StockModel(symbol: ticker, description: stockInfo?.description, currentPrice: returnedQuote?.c, percentageChange: returnedQuote?.dp, candles: candleArray)
                        
                        self.calc += (newStock.percentageChange ?? 0.0)
                        
                        DispatchQueue.main.async {
                            self.stocks.append(newStock)
                        }
                    }
                }
            }
        }
        calc /= Double(tickers.count)
    }
}
