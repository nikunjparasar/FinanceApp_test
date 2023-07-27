//
//  WatchlistView.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct WatchlistView: View {
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
                    StockCard()
                    StockCard()
                    StockCard()
                    StockCard()
                    StockCard()
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

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
