//
//  PortfolioCard.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct PortfolioCard: View {
    
    @StateObject var stocksVM: StocksViewModel

    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
            HStack(alignment: .top){
                Text("\(String(format: "%.2f", stocksVM.stocks.map({$0.currentPrice ?? 0.0}).reduce(0.0, +)))")
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                
                Text(
                    "\((stocksVM.calc) >= 0.0 ? "+" : "")"
                     +
                    "\(String(format: "%.2f", stocksVM.calc))%"
                )
                .foregroundColor((stocksVM.calc) >= 0.0 ? Color.lightBlue : Color.weirdPink)
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack{
                Button (action: {
                    
                }) {
                   Text("Edit")
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                }
                
                Spacer()
                
                Button (action: {
                    
                }) {
                   Text("AI Report")
                        .foregroundStyle(LinearGradient(colors: [.brightPink, .gray], startPoint: .leading, endPoint: .trailing))
//                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(LinearGradient(colors: [.brightPink, .darkGray], startPoint: .bottomLeading, endPoint: .topTrailing))
                        )
                }
            }
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 5.5)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(colors: [.darkGray, .darkGray, .lowOp, .darkGray], startPoint: .bottomLeading, endPoint: .topTrailing)
                )
        )
    }
}
//
//struct PortfolioCard_Previews: PreviewProvider {
//    static var previews: some View {
//        PortfolioCard()
//    }
//}
