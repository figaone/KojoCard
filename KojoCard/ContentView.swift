//
//  ContentView.swift
//  KojoCard
//
//  Created by Sharma, Anuj [CCE E] on 5/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("kojo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth:  5))
                
                Text("Kojo Adu-Gyamfi")
                    .font(Font.custom("Pacifico-Regular", size: 45))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+1 515 520 3350", imageName: "phone.fill")
                InfoView(text: "kgyamfi@iastate.edu", imageName: "envelope.fill")
            }
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                
        }
        .preferredColorScheme(.light)
    }
}


