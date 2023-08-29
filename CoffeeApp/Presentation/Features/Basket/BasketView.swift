//
//  BasketView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import SwiftUI

struct BasketView: View {
    @Environment(\.dismiss) private var dismiss;
    var body: some View {
        ZStack{
            Color.coffeeLight
                .ignoresSafeArea()
            VStack(alignment:.leading){
                BasketHeaderView(title: "Cart",onBackPressed: {
                    dismiss()
                }, onEditPressed:{
                    dismiss()
                })
                    .padding(.vertical)
                    .padding(.top)
                
                Text("My Order")
                    .font(.header3)
                    .foregroundColor(.coffeeDark)
                    .padding(.top)
                
                Group{Text("You have ").foregroundColor(.coffeeDark) + Text("\(categoryList[0].products.count) items").foregroundColor(.coffeeRed) + Text(" in your cart.").foregroundColor(.coffeeDark)}
                    .font(.cCaptionSemiBold)
                    
                    .padding(.top,8)
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack{
                        ForEach(Array(categoryList[0].products.enumerated()),id:\.element){index,product in
                            HorizontalProductItemView(product: product)
                                .padding(.bottom,index == categoryList[0].products.count-1 ? 100 : 16)
                        }
                    }
                }
                .padding(.top)
                .padding(.bottom,360)
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
                Spacer()
            }
            .vAlign(.bottom)
            .frame(width:getRect().width)
                .frame(maxHeight:.infinity)
                .background{
                    CurvedShape(height: 400,curveHeight:80)
                    .fill(Color.coffeeRed)
                    
                }
                .padding(.top,getRect().height-400)
                .zIndex(2)
            
            Button{
                
            }label:{
                VStack(spacing:0){
                    Text("$7.2")
                        .font(.header4)
                        .foregroundColor(.coffeeLight)
                    
                    Text("Checkout")
                        .font(.cBodyBold)
                        .foregroundColor(.coffeeLight)
                        .padding(.vertical,8)
                        .padding(.horizontal,32)
                       
                    
                    Spacer()
                }.frame(height: 80)
                    .frame(maxWidth: .infinity)
                    .background{
                        CurvedShape(height: 80)
                            .fill(Color.coffeeDark)
                    }
            }
            .padding(.top,getRect().height-100)
            .zIndex(3)
               
                
                
            
            
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
