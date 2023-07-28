//
//  StockCard.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct StockCard: View {
    
    let stockModel: StockModel
    @State private var logoStr: String = ""

    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: "https://logo.clearbit.com/\(logoStr).com")) { image in
                    image.resizable().aspectRatio(contentMode: .fit).frame(width: 40, height: 40)
                } placeholder: {
                    ProgressView()
                }
                .cornerRadius(5)
                
                    
                VStack {
                    HStack {
                        Text(stockModel.symbol)
                            .bold()
                            .font(.title3)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    HStack {
                        Text(stockModel.description ?? "")
                            .foregroundColor(.gray)
                            .lineLimit(1)
                            .truncationMode(.tail)
                            Spacer()
                    }
                }
                Spacer()
                
                Text(
                    
                    "\((stockModel.percentageChange ?? 0.0) >= 0.0 ? "+" : "")"
                     +
                    "\(String(format: "%.2f", stockModel.percentageChange ?? 0.00))%"
                
                )
                    .foregroundColor((stockModel.percentageChange ?? 0.0) >= 0.0 ? Color.lightBlue : Color.weirdPink)
                    .bold()
                    .font(.title3)
                
            }
            Spacer()
            HStack {
                Text("$\(String(format: "%.2f", stockModel.currentPrice ?? 0.0))")
                    .bold()
                    .font(.title)
                    .foregroundColor(Color.white)
                Spacer()
                //Graph
                LineChart(data: stockModel.candles.normalizedValues)
                    .stroke( (stockModel.percentageChange ?? 0.0) >= 0.0 ? LinearGradient(gradient: Gradient(colors: [.purple, .lightBlue, .lightBlue]), startPoint: .bottomLeading, endPoint: .topTrailing) : LinearGradient(gradient: Gradient(colors: [.purple, .weirdPink, .weirdPink]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 1.5)
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
        .onAppear {
            if let logoStr = stockModel.description?.components(separatedBy: " ").first {
                self.logoStr = logoStr.lowercased()
            }
        }
    }
}
//
//struct StockCard_Previews: PreviewProvider {
//    static var previews: some View {
//        StockCard()
//    }
//}
