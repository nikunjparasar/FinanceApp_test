//
//  HeaderView.swift
//  FinanceApp_OutlineUI
//
//  Created by Nikunj Parasar on 7/19/23.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showSheet: Bool
    var body: some View {
        HStack{
            Text("Trackers")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.gray)
            Spacer()
            
            Button(action: {
                showSheet.toggle()
            }) {
                Image(systemName: "magnifyingglass.circle.fill")
                    .accentColor(Color.gray)
                    .font(.system(size: 40))
            }
        }
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView()
//    }
//}
