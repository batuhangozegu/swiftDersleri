//
//  KisiKayitSayfa.swift
//  KisilerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct KisiKayitSayfa: View {
    
    @State private var tfKisiAdi = ""
    @State private var tfKisiTel = ""
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        print("Kişi Kaydet :  \(kisi_ad) - \(kisi_tel)")
    }
    
    
    var body: some View {
        VStack(spacing: 100){
            TextField("Kisi Ad", text: $tfKisiAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Kisi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            Button("Kaydet"){
                kaydet(kisi_ad: tfKisiAdi, kisi_tel: tfKisiTel)
            }
        }.navigationTitle("Kişi Kayıt")
    }
}

#Preview {
    KisiKayitSayfa()
}
