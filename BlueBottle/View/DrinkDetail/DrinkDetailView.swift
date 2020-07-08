//
//  DrinkDetailView.swift
//  BlueBottle
//
//  Created by 이재훈 on 2020/07/08.
//  Copyright © 2020 Jaehoon. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    @Binding var isShown: Bool
    
    @Binding var drink: Drink
    // let(var) name(변수): Type
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Image(systemName: "x.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .padding(.trailing, 20)
                        .onTapGesture {
                            withAnimation {
                                self.isShown = false
                            }
                    }
                }
                
                Spacer()
                
                Text(drink.name)
                
                Spacer()
            }
            
        }
    }
}
