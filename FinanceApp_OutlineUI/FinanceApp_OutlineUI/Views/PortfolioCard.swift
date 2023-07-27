//
//  PortfolioCard.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/21/23.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
            HStack(alignment: .top){
                Text("$4,100,233.30")
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                Text("-2.1%")
                    .foregroundColor(Color.weirdPink)
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

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
    }
}
