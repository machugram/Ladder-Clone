//
//  ContentView.swift
//  Ladder-Clone
//
//  Created by Rexford Machu on 11/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem{
                Image(systemName: "square.grid.2x2")
            }
            Text("2")
                .tabItem{
                    Image(systemName: "lasso")
                }
            Text("3")
                .tabItem{
                    Image(systemName: "chart.pie")
                }
            Text("4")
                .tabItem{
                    Image(systemName: "chart.bar.fill")
                }
            Text("5")
                .tabItem{
                    Image(systemName: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var title : String = "Wallet"
    var image: String = "rectangle.topthird.inset.filled"
    var backgroundColor : Color = Color(red: 0.791, green: 0.81, blue: 0.906)
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName:image)
                .padding(.bottom,10)
            Text(title)
                .bold()
                .font(.title3)
                .padding(0.5)
            Text("USD 1,124.00")
                .font(.body)
        }
        .frame(width: UIScreen.main.bounds.width*0.38, height: UIScreen.main.bounds.height*0.15)
        .padding(10)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}



struct HomeView:View{
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Image(uiImage: UIImage(imageLiteralResourceName: "12"))
//                    .resizable()
                    .frame(width: 50, height:50)
                    .cornerRadius(50)

                Text("Hi Kataachi")
                Spacer()
                HStack{
                    ZStack{
                        Circle()
                            .frame(width: 30, height: 30)                            .foregroundColor(Color(red: 1.0, green: 0.954, blue: 0.858))
                        
                        Image(systemName: "gift.fill")
                            .foregroundColor(.yellow)
                    }
                    ZStack{
                        Circle()
                            .frame(width: 30, height: 30)                            .foregroundColor(Color(red: 0.791, green: 0.81, blue: 1.0))
                        
                        Image(systemName: "bell.badge.fill")
                            .foregroundColor(.blue)
                    }
                    
                }
                
            }
            
            ScrollView(.vertical){
            VStack{
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Total Balance ")
                            .font(.body)
                            .padding(5)
                        Text("$22,128.48")
                            .bold()
                            .font(.title)
                    }
                    .padding(.leading,5)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 100, height: 30)
                                .cornerRadius(10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.791, green: 0.81, blue: 0.906)/*@END_MENU_TOKEN@*/)
                            Text("Add Money")
                                .font(.caption)
                        }
                    })
                }
            }
            
            VStack(alignment: .leading,spacing: 10){
               HStack(spacing: 20){
                   CardView(title: "Wallet", backgroundColor: Color(red: 0.791, green: 0.81, blue: 0.906))
                   CardView(title: "Accounts",image: "building.columns.fill", backgroundColor: Color(red: 1.0, green: 0.977, blue: 0.931))
                
            }
               HStack(spacing: 20){
                   CardView(title: "Savings",backgroundColor: Color(red: 0.916, green: 0.961, blue: 0.937))
                   CardView(title: "Investments",image: "chart.bar.fill", backgroundColor: Color(hue: 0.978, saturation: 0.039, brightness: 0.98))
                
            }
               
           }
            
            HStack{
                Image(systemName: "homepod.and.homepodmini.fill")
                    .resizable()
                    .frame(width: 100, height: 90)

                Image(systemName: "homepod.and.homepodmini.fill")
                    .resizable()
                    .frame(width: 100, height: 90)
                Text("Fund Your Plans")
                    .bold()
                    .font(.title3)
            }
        
            .frame(width:340,height: 120)
            .background(Color.accentColor)
            .cornerRadius(20)
            }
        }
        .padding()
    }
}
