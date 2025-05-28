//
//  KisiDetaySayfa.swift
//  KisilerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct KisiDetaySayfa: View {
    @State private var tfKisiAdi = ""
    @State private var tfKisiTel = ""
    
    var kisi = Kisiler()
    
    func guncelle(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        print("Kişi Güncelle : \(kisi_id) - \(kisi_ad) - \(kisi_tel)")
    }
    
    
    var body: some View {
        VStack(spacing: 100){
            TextField("Kisi Ad", text: $tfKisiAdi)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            TextField("Kisi Tel", text: $tfKisiTel)
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            Button("Güncelle"){
                guncelle(kisi_id: kisi.kisi_Id!, kisi_ad: tfKisiAdi , kisi_tel: tfKisiTel)
                
            }
        }.navigationTitle("Kişi Detay")
            .onAppear(){
                tfKisiAdi = kisi.kisi_ad!
                tfKisiTel = kisi.kisi_tel!
            }
    }
}

#Preview {
    KisiDetaySayfa()
}
