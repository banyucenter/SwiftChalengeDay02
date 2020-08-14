//
//  ContentView.swift
//  ChalengeDay02
//
//  Created by Ipung Dev Center on 14/08/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                //MARK: Header
                HStack{
                    Button(action:{}){
                        Image(systemName: "text.alignleft").resizable().frame(width: 25, height: 25).padding(.leading,30).foregroundColor(Color.black)
                    }
                    
                    Spacer()
                    Button(action:{}){
                        Image(systemName: "cart").resizable().frame(width: 25, height: 25).padding(.leading,30).padding(.trailing,30).foregroundColor(Color.black)
                    }
                }.padding(.top, 40)
                
                //MARK: Title Top
                Text("Collection of chairs").font(.system(size: 48, weight: .bold, design: .default)).padding([.leading, .trailing],30).fixedSize(horizontal: false, vertical: true)
                
                //MARK: CATEGORIES
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:40) {
                        VStack(alignment: .center) {
                            Text("Chair").font(.system(size: 21, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.4943761826, green: 0.5192152858, blue: 0.5728862286, alpha: 1)))
                            Circle().frame(width: 10, height: 10, alignment: .leading).foregroundColor(Color(#colorLiteral(red: 0.2624064684, green: 0.6895416379, blue: 1, alpha: 1)))
                        }
                        VStack(alignment: .center) {
                            Text("Cupboard").font(.system(size: 21, weight: .light, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.4943761826, green: 0.5192152858, blue: 0.5728862286, alpha: 1)))
                            Circle().frame(width: 10, height: 10, alignment: .leading).foregroundColor(Color(#colorLiteral(red: 0.2624064684, green: 0.6895416379, blue: 1, alpha: 1))).opacity(0)
                        }
                        VStack(alignment: .center) {
                            Text("Table").font(.system(size: 21, weight: .light, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.4943761826, green: 0.5192152858, blue: 0.5728862286, alpha: 1)))
                            Circle().frame(width: 10, height: 10, alignment: .leading).foregroundColor(Color(#colorLiteral(red: 0.2624064684, green: 0.6895416379, blue: 1, alpha: 1))).opacity(0)
                        }
                        VStack(alignment: .center) {
                            Text("Accesories").font(.system(size: 21, weight: .light, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0.4943761826, green: 0.5192152858, blue: 0.5728862286, alpha: 1)))
                            Circle().frame(width: 10, height: 10, alignment: .leading).foregroundColor(Color(#colorLiteral(red: 0.2624064684, green: 0.6895416379, blue: 1, alpha: 1))).opacity(0)
                        }
                    }.padding([.leading, .trailing],30)
                }.padding(.bottom,20)
                
                //MARK: PRODUCT LIST
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        
                        ZStack(alignment: .leading){
                            Image("chair2").resizable().aspectRatio(contentMode: .fill).frame(width: 280, height: 400).cornerRadius(20).clipped()
                            VStack(alignment:.leading) {
                                Text("Furniture").font(.system(size: 18, weight: .light, design: .default)).foregroundColor(Color.white).padding(.leading, 30).padding(.top,40)
                                Text("Chair \nPeach colour").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(Color.white).padding(.leading, 30)
                                Spacer()
                                Button(action:{
                                    withAnimation {
                                        self.showDetails.toggle()
                                    }
                                }){
                                    Text("$ 26.10")
                                        .padding()
                                        .background(Color(#colorLiteral(red: 0.8270705938, green: 0.8276965022, blue: 0.835244298, alpha: 1)))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2696988583, green: 0.3000448346, blue: 0.3651112318, alpha: 1)))
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .cornerRadius(20)
                                }.padding(.bottom,40)
                                    .padding(.leading, 30)
                            }
                        }
                        .frame(width: 280, height: 400)
                        .background(Color.secondary)
                        .cornerRadius(20)
                        
                        
                        ZStack(alignment: .leading){
                            Image("chair1").resizable().aspectRatio(contentMode: .fill).frame(width: 280, height: 400).cornerRadius(20).clipped()
                            VStack(alignment:.leading) {
                                Text("Furniture").font(.system(size: 18, weight: .light, design: .default)).foregroundColor(Color.white).padding(.leading, 30).padding(.top,40)
                                Text("Chair \nPeach colour").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(Color.white).padding(.leading, 30)
                                Spacer()
                                Button(action:{}){
                                    Text("$ 26.10")
                                        .padding()
                                        .background(Color(#colorLiteral(red: 0.8270705938, green: 0.8276965022, blue: 0.835244298, alpha: 1)))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2696988583, green: 0.3000448346, blue: 0.3651112318, alpha: 1)))
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .cornerRadius(20)
                                }.padding(.bottom,40)
                                    .padding(.leading, 30)
                            }
                        }
                        .frame(width: 280, height: 400)
                        .background(Color.secondary)
                        .cornerRadius(20)
                        
                        
                        ZStack(alignment: .leading){
                            Image("chair3").resizable().aspectRatio(contentMode: .fill).frame(width: 280, height: 400).cornerRadius(20).clipped()
                            VStack(alignment:.leading) {
                                Text("Furniture").font(.system(size: 18, weight: .light, design: .default)).foregroundColor(Color.white).padding(.leading, 30).padding(.top,40)
                                Text("Chair \nPeach colour").font(.system(size: 24, weight: .bold, design: .default)).foregroundColor(Color.white).padding(.leading, 30)
                                Spacer()
                                Button(action:{
                                    
                                }){
                                    Text("$ 26.10")
                                        .padding()
                                        .background(Color(#colorLiteral(red: 0.8270705938, green: 0.8276965022, blue: 0.835244298, alpha: 1)))
                                        .foregroundColor(Color(#colorLiteral(red: 0.2696988583, green: 0.3000448346, blue: 0.3651112318, alpha: 1)))
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .cornerRadius(20)
                                }.padding(.bottom,40)
                                    .padding(.leading, 30)
                            }
                        }
                        .frame(width: 280, height: 400)
                        .background(Color.secondary)
                        .cornerRadius(20)
                        
                    }.padding([.leading, .trailing],30)
                }.padding(.bottom,20)
                
                //MARK: OFFER
                HStack{
                    ZStack{
                        Image("chairicon").resizable().frame(width: 50, height: 60)
                    }.frame(width: 40, height: 60).padding().background(Color(#colorLiteral(red: 0.9370235801, green: 0.9373998642, blue: 0.941095531, alpha: 1))).cornerRadius(20)
                    VStack(alignment:.leading){
                        Text("Special offer").font(.system(size: 20, weight: .bold, design: .rounded))
                        Text("Adding to your cart").font(.system(size: 16, weight: .light, design: .rounded))
                        
                    }.padding()
                    Spacer()
                    
                    Button(action:{}){
                        Image(systemName: "chevron.right").resizable().foregroundColor(Color.white).frame(width: 15, height: 25)
                    }.frame(width: 15, height: 30).padding().background(Color(#colorLiteral(red: 0.6547756195, green: 0.7563487291, blue: 0.2357113957, alpha: 1))).cornerRadius(15)
                }.padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color(#colorLiteral(red: 0.7531241241, green: 0.7531241241, blue: 0.7531241241, alpha: 1)), radius: 20,y:10)
                    .padding([.leading, .trailing],30)
                
                Spacer()
                
               
            }.statusBar(hidden: true)
            
            if showDetails {
                DetailProduct().transition(.move(edge: .leading)).animation(.easeIn)
               }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
