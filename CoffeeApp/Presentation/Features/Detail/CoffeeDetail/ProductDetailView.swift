//
//  ProductDetailView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/18/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductDetailView: View {
    
    var product: Product
//    @Binding var showDetail: Bool
    var animation: Namespace.ID
    @EnvironmentObject var router:MainRouter
    @State private var showContent = false
    @State private var count = 0
    @State private var selectedSize:SizeType = .small
    @State private var extraPrice = 0.0
    
    
    
    
    var body: some View {
        ZStack(alignment: .top){
            Color.coffeeLight.ignoresSafeArea()
            VStack{
                WebImage(url: URL(string: product.image))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: product.name, in: animation)
                    .frame(width: getRect().width, height: 350)
                    .cornerRadius(0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.easeInOut){
//                            showDetail.toggle()
                        }
                    }
                
                
                VStack{
                    
                    Spacer()
                    sizeView()
                    countView()
                    
                    addToCartView()
                }
                .frame(width:getRect().width)
                .frame(maxHeight:.infinity)
                .background{
                    CurvedShape(height: getRect().height-270,curveHeight:80)
                    .fill(Color.coffeeLight)
                    .padding(.top,-80)
                }
                .opacity(showContent ? 1 : 0)
                .offset(y:showContent ? 0 : 100)
                
            }
                .ignoresSafeArea()
           
            
        }
        .task {
            withAnimation{
                showContent.toggle()
            }
            
        }
    }
    
    @ViewBuilder
    private func sizeView() -> some View{
        VStack {
            Text("Coffee Size")
                .font(.header4)
                .foregroundColor(.coffeeDark)
          
            HStack(alignment:.bottom){
                Spacer()
                SizeView(size: .small)
                Spacer()
                SizeView(size: .medium)
                Spacer()
                SizeView(size: .large)
                Spacer()
            }
        }.padding(.bottom,30)
    }
    @ViewBuilder
    private func countView() -> some View {
        HStack(spacing:16){
            Button{
                if count > 0 {
                    count -= 1
                }
            }label: {
                Image(Icons.minus)
                    .resizable()
                    .frame(width:40,height:40)
            }
            
            Text("\(count)")
                .font(.header4)
            
            Button{
               count += 1
            }label: {
                Image(Icons.add)
                    .resizable()
                    .frame(width:40,height:40)
            }
            
        }.padding(.bottom,32)
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
    
    @ViewBuilder
    private func SizeView(size:SizeType) -> some View {
        VStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(selectedSize == size ? Color.coffeeRed : .white)
                .frame(width:size.containerSize ,height:size.containerSize)
                .overlay{
                    Image(Icons.cup)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width:size.iconSize,height:size.iconSize)
                        .foregroundColor(selectedSize == size ? .white : .coffeeRed)
                }
            Text(size.rawValue)
                .font(.cBodySemiBold)
                .foregroundColor(.coffeeDark)
                .opacity(selectedSize == size ? 1 : 0.5)
        }.onTapGesture {
            withAnimation(.easeInOut){
                selectedSize = size
            }
        }
    
    }
    
    
}

//struct ProductDetailView_Previews: PreviewProvider {
//    @Namespace var animation
//    static var previews: some View {
//        ProductDetailView(product: .init(
//            id:"3",
//            name: "Herbal Tea",
//            price: 4.5,
//            image: "https://img.freepik.com/free-photo/fresh-lemonade-rustic-table-with-organic-ingredients-generated-by-ai_188544-31783.jpg?t=st=1692198150~exp=1692201750~hmac=c7f5ee31f2483ad709e97770e5301e7b7800eb5fbeccfe659f4c167cfd99d998&w=1800",
//            description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.",
//            category: .hotTeas
//        ))
//    }
//}
