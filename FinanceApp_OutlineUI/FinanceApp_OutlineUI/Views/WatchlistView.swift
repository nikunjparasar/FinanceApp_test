//
//  WatchlistView.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct WatchlistView: View {
    
    @StateObject var stocksVM: StocksViewModel
    
    var body: some View {
        VStack {
            HStack{
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color.gray)
                    Spacer()
            }
            ScrollView{
                VStack{
                    ForEach(stocksVM.stocks, id: \.self) { stock in
                        StockCard(stockModel: stock)
                    }
                }
                
                
            }
            .padding(3)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(colors: [.darkGray, .darkGray, .lowOp, .darkGray], startPoint: .bottomLeading, endPoint: .topTrailing)
                    )
            )
            
            
        }
    }
}

//struct WatchlistView_Previews: PreviewProvider {
//    static var previews: some View {
//        WatchlistView()
//    }
//}
