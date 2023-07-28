//
//  ContentView.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var stocksVM: StocksViewModel = StocksViewModel()
    
    @State private var isShowingStockSearchSheet: Bool = false
    
    var body: some View {
        VStack {
            HeaderView(showSheet: $isShowingStockSearchSheet)

            PortfolioCard(stocksVM: stocksVM)
            
            WatchlistView(stocksVM: stocksVM)
            
            
        
            Spacer()
        }
        .padding()
//        .edgesIgnoringSafeArea(.bottom)
        .sheet(isPresented: $isShowingStockSearchSheet){
            SearchStockView()
        }
        .background(Color.black)
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
