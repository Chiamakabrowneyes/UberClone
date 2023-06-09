//
//  RideRequestView.swift
//  UberClone
//
//  Created by chiamakabrowneyes on 5/14/23.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType: RideType = .uberX
    
    var body: some View {
        VStack{
            Capsule().foregroundColor(Color(.systemGray5)).frame(width:48, height: 6).padding(.top, 8)
            
            HStack {
                VStack (alignment: .leading, spacing: 24){
                    Circle().fill(Color(.systemGray3)).frame(width: 8, height: 8)
                    Rectangle().fill(Color(.systemGray3)).frame(width: 1, height: 32)
                    Rectangle().fill(.black).frame(width: 8, height: 8)
                }
                VStack {
                    HStack{
                        Text("Current Location").font(.system(size:16, weight: .semibold)).foregroundColor(.gray)
                        Spacer()
                        Text("1:30 PM").font(.system(size: 14, weight: .semibold)).foregroundColor(.gray)
                    }.padding(.bottom, 10)
                    
                    HStack{
                        Text("Star bucks").font(.system(size:16, weight: .semibold))
                        Spacer()
                        Text("1:43 PM").font(.system(size: 14, weight: .semibold)).foregroundColor(.gray)
                    }
                }.padding(.leading, 8)
            }.padding()
            
            Divider()
            
            //ride type selection
            Text("SUGGESTED Rides").font(.subheadline).fontWeight(.semibold).padding().foregroundColor(.gray).frame(maxWidth:.infinity, alignment: .leading)
            
            ScrollView(.horizontal){
                HStack(spacing:12) {
                    ForEach(RideType.allCases) { type in
                        VStack(alignment: .leading) {
                            Image(type.imageName).resizable().scaledToFit()
                            
                            VStack (alignment: .leading, spacing: 4){
                                Text(type.description).font(.system(size: 14, weight: .semibold))
                                Text("$22.90").font(.system(size: 14, weight: .semibold))
                            }.padding(8)
                            
                        }.frame(width:112, height: 140).foregroundColor(type == selectedRideType ? .white : .black).background(Color(type == selectedRideType ? .systemBlue : .systemGroupedBackground)).scaleEffect(type == selectedRideType ? 1.2 : 1.0).cornerRadius(10).onTapGesture {
                            withAnimation(.spring()) {
                                selectedRideType = type
                            }
                        }
                    }
                }
            }.padding(.horizontal)
            
            Divider()
            
            //payment Option View
            HStack(spacing: 12){
                Text("Visa").font(.subheadline).fontWeight(.semibold).padding(6).background(.blue).cornerRadius(4).foregroundColor(.white).padding(.leading)
                Text("**** 2531").fontWeight(.bold)
                Spacer()
                
                Image(systemName: "chevron.right").imageScale(.medium).padding()
            }.frame(height: 50).background(Color(.systemGroupedBackground)).cornerRadius(10).padding(.horizontal)
            
            Divider().padding(.vertical, 8)
            
            //request Ride button
            Button {
                
            } label: {
                Text("CONFIRM RIDE").fontWeight(.bold).frame(width: UIScreen.main.bounds.width - 32 , height: 50).background(.blue).cornerRadius(10).foregroundColor(.white)
            }.cornerRadius(16)
        }.padding(.bottom, 24).background(.white).cornerRadius(16)
    }
}

struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
