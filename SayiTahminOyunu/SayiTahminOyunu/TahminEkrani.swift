//
//  TahminEkrani.swift
//  SayiTahminOyunu
//
//  Created by Batuhan Gözegü on 25.05.2025.
//

import SwiftUI

struct TahminEkrani: View {
    
    @State private var sonucEkraninaGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var tfTahmin = ""
    @State private var rastgeleSayi = 0
    @State private var sonuc = false
    
    var body: some View {
        VStack(spacing: 100){
            Text("Kalan Hak : \(kalanHak)")
                .font(.system(size: 36))
                .foregroundStyle(.red)
            
            Text("Yardim : \(yonlendirme)")
                .font(.system(size: 24))
            
            TextField("Tahmin", text: $tfTahmin)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Tahmin ET") {
                
                kalanHak -= 1
                
                if let tahmin = Int(tfTahmin){
        
                    if tahmin == rastgeleSayi {
                        sonucEkraninaGecis = true
                        sonuc = true
                        return
                    }
                    if tahmin > rastgeleSayi{
                        yonlendirme = "Azalt"
                    }
                    if tahmin < rastgeleSayi{
                        yonlendirme = "Arttır"
                    }
                    if kalanHak == 0 {
                        sonucEkraninaGecis = true
                        sonuc = false
                    }
                }
                tfTahmin = ""
            }.foregroundStyle(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
        }.navigationDestination(isPresented: $sonucEkraninaGecis){
            SonucEkrani(sonuc: sonuc)
        }.onAppear{
            rastgeleSayi = Int.random(in: 1...100)
            print("Rastgele Sayi: \(rastgeleSayi)")
            
            //Arayüz Sıfırlama
            kalanHak = 5
            yonlendirme = ""
            tfTahmin = ""
        }
    }
}

#Preview {
    TahminEkrani()
}
