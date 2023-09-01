//
//  BasketDetailView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct BasketDetailView: View {
    var basket:Basket
    @Environment(\.dismiss) private var dismiss;
    @State private var showDetail:Bool = false
    

    var body: some View {
        ZStack(alignment:.bottom){
            Color.coffeeLight
                .ignoresSafeArea()
            VStack(alignment:.leading){
                BasketHeaderView(title: "Cart",onBackPressed: {
                    dismiss()
                }, onDetailPressed:{
                    withAnimation{
                        showDetail.toggle()
                    }
                })
                   
                    
                    
                
                
                Text("My Order")
                    .font(.header3)
                    .foregroundColor(.coffeeDark)
                    .padding(.top,32)
                
                Group{Text("You have ").foregroundColor(.coffeeDark) + Text("\(basket.items.count) items").foregroundColor(.coffeeRed) + Text(" in your cart.").foregroundColor(.coffeeDark)}
                    .font(.cCaptionSemiBold)
                    
                    .padding(.top,8)
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        ForEach(Array(basket.items.enumerated()),id:\.element){index,item in
                            HorizontalProductItemView(product: item.product)
                                .padding(.bottom,index == basket.items.count-1 ? 100 : 16)
                        }
                    }
                }
                .padding(.top)
                
            }.padding()
            
            VStack{
                
                VStack{
                    HStack{
                        Text("Subtotal")
                            .font(.cBodyBold)
                            .foregroundColor(.white)
                        Spacer()
                        Text("$5.7")
                            .font(.cBody)
                            .foregroundColor(.white)
                    }.padding(.top,32)
                    Divider()
                        .overlay(Color.white.opacity(0.4))
                    
                    HStack{
                        Text("Delivery")
                            .font(.cBodyBold)
                            .foregroundColor(.white)
                        Spacer()
                        Text("$1.0")
                            .font(.cBody)
                            .foregroundColor(.white)
                    }
                    .padding(.top)
                    Divider()
                        .overlay(Color.white.opacity(0.4))
                    HStack{
                        Text("Taxes")
                            .font(.cBodyBold)
                            .foregroundColor(.white)
                        Spacer()
                        Text("$0.5")
                            .font(.cBody)
                            .foregroundColor(.white)
                    }
                    .padding(.top)
                    Divider()
                        .overlay(Color.white.opacity(0.4))
                    HStack{
                        Text("Total")
                            .font(.cBodyBold)
                            .foregroundColor(.white)
                        Spacer()
                        Text("$7.2")
                            .font(.cBody)
                            .foregroundColor(.white)
                    }
                    
                   
                }.padding(.horizontal)
                    .padding(.top)
                
            }
            .vAlign(.center)
            .frame(width:getRect().width)
                .frame(maxHeight:.infinity)
                .background{
                    CurvedShape(height: 400,curveHeight:80)
                    .fill(Color.coffeeRed)
                    
                }
                .padding(.top,getRect().height-450)
                .zIndex(3)
                .opacity(showDetail ? 1 : 0)
                .offset(y:showDetail ? 0 : 400)
               
            
            Button{
                
            }label:{
                Text("Checkout $7.2")
                    .font(.cBodyBold)
                    .foregroundColor(.coffeeLight)
                    .padding(.vertical,8)
                    .padding(.horizontal,32)
            }
           
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .background(Color.coffeeDark)
            .opacity(!showDetail ? 1 : 0)
            .cornerRadius(12)
            .zIndex(2)
            .padding()
               
                
                
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BasketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BasketDetailView(basket: .init(items: [
            .init(product: categoryList[0].products[0], quantity: 1, createdAt: Date()),
            .init(product: categoryList[0].products[1], quantity: 1, createdAt: Date()),
            .init(product: categoryList[0].products[2], quantity: 1, createdAt: Date()),
            .init(product: categoryList[0].products[3], quantity: 1, createdAt: Date()),
            
        ], createdAt: Date()))
    }
}
