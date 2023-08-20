//
//  DetailView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/18/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailView: View {
    var product: Product
    @EnvironmentObject var router:MainRouter
    @StateObject private var viewModel = DetailViewModel()
    @State private var showContent = false
    @State private var extraPrice = 0.0
    
    
    
    
    var body: some View {
        ZStack(alignment: .top){
            
            Color.coffeeLight.ignoresSafeArea()
            
            DetailsHeaderView(title: product.name,isFavorite: product.isFavorite,onBackPressed: {
                router.navigateBack()
            },onLikePressed: {
                
            })
                .zIndex(4)
                .padding()
                .padding(.top)
         
                WebImage(url: URL(string: product.image))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width, height: getRect().height/2.5
                    )
                    .cornerRadius(0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.easeInOut){
//                            showDetail.toggle()
                        }
                    }.zIndex(1)
            
            VStack{
                ScrollView{
                    VStack{
                        Text("Ingredients")
                            .font(.header4)
                            .foregroundColor(.coffeeDark)
                        QuantityView()
                            .frame(height:110)
                            
                        Spacer()
                        sizeCountainerView()
                        CountView(count:$viewModel.count,onIncrease: {
                            viewModel.onEvent(.increaseCountByOne)
                        },onDecrease: {
                            viewModel.onEvent(.decreaseCountByOne)
                        })
                    }
                }
                
               
                
                addToCartView()
            }
            .frame(width:getRect().width,height:getRect().height-getRect().height/2.6)
            .frame(maxHeight:.infinity)
            .background{
                CurvedShape(height: getRect().height-getRect().height/2.6,curveHeight:80)
                .fill(Color.coffeeLight)
                
            }
            .padding(.top,getRect().height/2.6)
            .opacity(showContent ? 1 : 0)
            .offset(y:showContent ? 0 : 100)
            .zIndex(2)
            .ignoresSafeArea()
            
            
        }
        .task {
            withAnimation{
                showContent.toggle()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
    
    @ViewBuilder
    private func sizeCountainerView() -> some View{
        VStack {
            Text("Coffee Size")
                .font(.header4)
                .foregroundColor(.coffeeDark)
          
            HStack(alignment:.bottom){
                Spacer()
                SizeView(selectedSize: viewModel.selectedCupSize, size: .small){
                    withAnimation(.easeInOut){
                        viewModel.onEvent(.changeCupSize(.small))
                    }
                }
                Spacer()
                SizeView(selectedSize: viewModel.selectedCupSize, size: .medium){
                    withAnimation(.easeInOut){
                        viewModel.onEvent(.changeCupSize(.medium))
                    }
                
                }
                Spacer()
                SizeView(selectedSize: viewModel.selectedCupSize, size: .large){
                    withAnimation(.easeInOut){
                        viewModel.onEvent(.changeCupSize(.large))
                    }
                }
                Spacer()
            }
        }.padding(.bottom,30)
    }
  
    @ViewBuilder
    private func addToCartView() -> some View {
        VStack(spacing:16){
            Text("$\((product.price + extraPrice).removeZerosFromEnd())")
                .font(.header3)
                .foregroundColor(.coffeeMud)
            
            Text("Add to Cart")
                .font(.cBodySemiBold)
                .foregroundColor(.white)
            Spacer()
        }.frame(height: 80)
            .frame(maxWidth: .infinity)
            .background{
                CurvedShape(height: 80)
                    .fill(Color.coffeeDark)
            }
    }
    
    
}

struct ProductDetailView_Previews: PreviewProvider {
   
        static var previews: some View {
            DetailView(product: .init(
                id:"3",
                name: "Herbal Tea",
                price: 4.5,
                image: "https://img.freepik.com/free-photo/fresh-lemonade-rustic-table-with-organic-ingredients-generated-by-ai_188544-31783.jpg?t=st=1692198150~exp=1692201750~hmac=c7f5ee31f2483ad709e97770e5301e7b7800eb5fbeccfe659f4c167cfd99d998&w=1800",
                description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.",
                category: .hotTeas
            ))
        }
}
