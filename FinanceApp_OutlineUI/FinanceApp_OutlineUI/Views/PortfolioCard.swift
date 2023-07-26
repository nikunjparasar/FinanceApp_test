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
            Text("Porfolio Value")
                .foregroundColor(Color.gray)
                .font(.title2)
            HStack(alignment: .top){
                Text("$4,100,233.30")
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                Text("2.1%")
                    .foregroundColor(Color.lightGreen)
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack{
                Button (action: {
                    
                }) {
                   Text("Deposit")
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.lightGreen)
                        )
                }
                
                Spacer()
                
                Button (action: {
                    
                }) {
                   Text("Withdraw")
                        .foregroundColor(Color.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray)
                        )
                }
            }
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 5)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.darkBlue)
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
    }
}
