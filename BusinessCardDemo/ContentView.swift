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
                CompanyLogo(img: "neosoft")
                ProfileView(img: "Bhushan_Mokal")
                VStack{
                    EmployeeNameLabel(name: "Bhushan Mokal")
                    EmployeeDetail(text: "Software Development")
                    EmployeeDetail(text: "4519")
                    EmployeeDetail(text: "B+ve")
                }
            }
            Spacer()
            VStack{
                VStack(alignment: .leading){
                    AddressText(text:"The Ruby Tower, Unit No.5,")
                    AddressText(text:"4th Floor, 29 Senapati Bapat Marg,")
                    AddressText(text:"Dadar(W), Mumbai - 400 028, MH, India.")
                    AddressText(text:"Phone: 022-40500600")
                }
                .padding(20)
            }
            .background(Color.red)
            Spacer()
            CompanyURL(url: "w w w . n e o s o f t t e c h . c o m")
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

struct CompanyLogo:View{
    var img : String
    var body: some View{
        Image(img)
            .resizable()
            .frame(width: 175, height: 40, alignment: .center)
    }
}

struct ProfileView:View{
    var img : String
    var body: some View{
        Image(img)
            .resizable()
            .frame(width: 175, height: 200, alignment: .center)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1))
    }
}

struct EmployeeNameLabel:View{
    var name : String
    var body: some View{
        Text(name)
            .font(.title)
            .foregroundColor(Color.red)
    }
}

struct EmployeeDetail: View{
    var text: String
    var body: some View{
        Text(text)
            .font(.system(size: 20, weight: .regular, design: .default))
    }
}

struct AddressText: View{
    var text: String
    var body: some View{
        Text(text)
            .foregroundColor(Color.white)
            .font(.system(size: 15, weight: .regular, design: .default))
    }
}

struct CompanyURL:View{
    var url : String
    var body: some View{
        Text(url)
    }
}
