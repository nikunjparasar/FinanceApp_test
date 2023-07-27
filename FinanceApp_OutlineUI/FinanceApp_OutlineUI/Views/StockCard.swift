//
//  StockCard.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct StockCard: View {
    var body: some View {
        VStack {
            HStack {
//                        AsyncImage(url: URL(string: "https://logo.clearbit.com/apple.com"))
                Image(systemName: "appletv.fill")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                VStack {
                    HStack {
                        Text("AAPL")
                            .bold()
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    HStack {
                        Text("Apple Inc")
                            .foregroundColor(.gray)
                            .lineLimit(1)
                            .truncationMode(.tail)
                            Spacer()
                    }
                }
                Spacer()
                
                Text("1.2%")
//                positive
                    .foregroundColor(Color.lightBlue)
//                negative
//                    .foregroundColor(Color.weirdPink)
                    .bold()
                    .font(.title3)
                
            }
            Spacer()
            HStack {
                Text("$137.51")
                    .bold()
                    .font(.title)
                    .foregroundColor(Color.white)
                Spacer()
                //Graph
                LineChart(data: StockMockData.apple.normalizedValues)
                    .stroke(
//                         for negative percent change
//                        LinearGradient(gradient: Gradient(colors: [.purple, .weirdPink, .weirdPink]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 1.5)
                        // for positive percent change
                        LinearGradient(gradient: Gradient(colors: [.purple, .lightBlue, .lightBlue]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 1.5)
            }
        }
        .padding()
        .padding(.horizontal)
        .padding(5)
        .frame(height: UIScreen.main.bounds.height/6)
//        .background(
//            RoundedRectangle(cornerRadius: 15)
//                .stroke(Color.gray)
//        )
    }
}

struct StockCard_Previews: PreviewProvider {
    static var previews: some View {
        StockCard()
    }
}
