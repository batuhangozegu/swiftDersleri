//
//  ContentView.swift
//  SayiTahminOyunu
//
//  Created by Batuhan Gözegü on 25.05.2025.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var tahminEkraninaGecis = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 100,){
                Text("Sayı Tahmin Oyunu")
                    .font(.largeTitle)
                Image("zar").resizable().frame(width: 128, height: 128)
                Button("OYUNA BAŞLA"){
                    
                    tahminEkraninaGecis = true
                    
                }.foregroundStyle(.white)
                    .frame(width: 250, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
            }.navigationDestination(isPresented: $tahminEkraninaGecis){
                TahminEkrani()
            }
        }
    }
}

#Preview {
    Anasayfa()
}
