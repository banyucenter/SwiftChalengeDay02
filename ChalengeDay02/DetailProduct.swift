//
//  DetailProduct.swift
//  ChalengeDay02
//
//  Created by Ipung Dev Center on 14/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct DetailProduct: View {
    @State private var showPrice = false
    var body: some View {
        ZStack{
            
            VStack(alignment:.leading) {
                
                //MARK: HEADER
                HStack{
                    Button(action:{}){
                        Image(systemName: "arrow.left").resizable().frame(width: 25, height: 25).padding(.leading,30).foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    Button(action:{}){
                        Image(systemName: "magnifyingglass").resizable().frame(width: 25, height: 25).padding(.leading,30).padding(.trailing,30).foregroundColor(Color.white)
                    }
                }.padding(.top, 20)
                Spacer()
                if showPrice {
                    Price().transition(.opacity)
                }
                
                Spacer()
                //MARK: NAME PRODUCT
                VStack(alignment: .leading){
                    Text("Furniture").font(.system(size: 22, weight: .light, design: .default)).foregroundColor(Color.white).padding(.bottom, 20)
                    Text("MX Chair - modern \ndesign").font(.system(size: 32, weight: .bold, design: .default)).foregroundColor(Color.white)
                }.padding([.leading,.trailing], 30)
                
                //MARK: TABICON
            HStack{
                
                Image(systemName: "rectangle.3.offgrid.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color(#colorLiteral(red: 0.7207359672, green: 0.7296501994, blue: 0.7372744679, alpha: 1))).padding(.leading, 30)
                
                Spacer()
                Image(systemName: "plus").resizable().frame(width: 25, height: 25).padding().background(Color(#colorLiteral(red: 0.6547756195, green: 0.7563487291, blue: 0.2357113957, alpha: 1))).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).cornerRadius(20)
                Spacer()
                Image(systemName: "person.fill").resizable().frame(width: 20, height: 20).foregroundColor(Color(#colorLiteral(red: 0.7207359672, green: 0.7296501994, blue: 0.7372744679, alpha: 1))).padding(.trailing, 30)
                
                
            }.padding().background(Color.white).cornerRadius(30).padding([.leading,.trailing], 30).padding(.bottom, 20)
                
                
                
            }
            
        }.background(Image("chair2").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all).onTapGesture {
            withAnimation {
                self.showPrice.toggle()
            }
        })
        
    }
}

struct DetailProduct_Previews: PreviewProvider {
    static var previews: some View {
        DetailProduct()
    }
}

struct Price: View {
    var body: some View {
        HStack(spacing:35){
            ZStack{
                Circle().fill(Color.white).frame(width: 30, height: 30).opacity(10).opacity(0.5)
                Circle().fill(Color(#colorLiteral(red: 0.2624064684, green: 0.6895416379, blue: 1, alpha: 1))).frame(width: 10, height: 10)
            }
            
            VStack(alignment:.leading){
                Text("Chair").foregroundColor(Color(#colorLiteral(red: 0.3447214761, green: 0.3487062501, blue: 0.3606605721, alpha: 1)))
                HStack{
                    Text("Peach colour").foregroundColor(Color(#colorLiteral(red: 0.3447214761, green: 0.3487062501, blue: 0.3606605721, alpha: 1)))
                    Text("$ 180.12").font(.system(size: 18, weight: .bold, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.6547756195, green: 0.7563487291, blue: 0.2357113957, alpha: 1)))
                }
            }.padding().background(Color.white).cornerRadius(20).opacity(0.9)
        }.padding([.leading,.trailing], 30).offset(x: 70, y: 100)
    }
}
