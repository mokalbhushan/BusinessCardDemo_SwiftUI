//
//  ContentView.swift
//  BusinessCardDemo
//
//  Created by Neosoft on 04/08/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            Spacer()
                VStack(spacing: 20){
            Image("neosoft")
                    .resizable()
                    .frame(width: 175, height: 40, alignment: .center)
            Image("Bhushan_Mokal")
                    .resizable()
                    .frame(width: 175, height: 200, alignment: .center)
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black, lineWidth: 1))
            VStack{
            Text("Bhushan Mokal")
                .font(.title)
                .foregroundColor(Color.red)
            Text("Software Development")
                    .font(.system(size: 20, weight: .regular, design: .default))
            Text("4519")
                    .font(.system(size: 20, weight: .regular, design: .default))
            Text("B+ve")
                    .font(.system(size: 20, weight: .regular, design: .default))
            }
            }
            Spacer()
            VStack{
            VStack(alignment: .leading){
                Text("The Ruby Tower, Unit No.5,")
                    .foregroundColor(Color.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
                Text("4th Floor, 29 Senapati Bapat Marg,")
                    .foregroundColor(Color.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
                Text("Dadar(W), Mumbai - 400 028, MH, India.")
                    .foregroundColor(Color.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
                Text("Phone: 022-40500600")
                    .foregroundColor(Color.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
            }
            .padding(20)
            }
            .background(Color.red)
            Spacer()
            Text("w w w . n e o s o f t t e c h . c o m")
            Spacer()
            }
            .background( Rectangle()
                            .fill(Color.white)
                            .cornerRadius(12)
                            .shadow(
                                color: Color.gray.opacity(0.7),
                                radius: 8,
                                x: 0,
                                y: 0
                        ))
            .padding([.bottom, .trailing, .leading, .top], 20)
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
