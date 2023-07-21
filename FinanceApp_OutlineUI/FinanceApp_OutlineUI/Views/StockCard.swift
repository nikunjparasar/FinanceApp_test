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
                
                VStack {
                    Text("AAPL")
                        .bold()
                        .font(.title3)
                    Text("Apple Inc")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                Spacer()
                
                Text("1.2%")
                    .foregroundColor(Color.lightGreen)
                    .bold()
                    .font(.title3)
                
            }
            Spacer()
            HStack {
                Text("$137.51")
                    .bold()
                    .font(.title)
                Spacer()
                //Graph
                Text("Graph")
            }
        }
        .padding()
        .padding(.horizontal)
        .padding(5)
        .frame(height: UIScreen.main.bounds.height/4)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray)
        )
    }
}

struct StockCard_Previews: PreviewProvider {
    static var previews: some View {
        StockCard()
    }
}
