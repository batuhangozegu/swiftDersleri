//
//  DetaySayfa.swift
//  YemeklerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct DetaySayfa: View {
    
    var yemek = Yemekler()
    
    var body: some View {
        
        VStack(spacing: 100){
            
            Image(yemek.yemek_resim_adi!)
            
            Text("\(yemek.yemek_fiyat!) ₺").font(.system(size: 50)).foregroundStyle(.blue)
            
            Button("Sipariş Ver"){
                print("\(yemek.yemek_adi!) sipariş verildi")
            }
            .foregroundStyle(.white)
            .frame(width: 250,height: 50)
            .background(.blue)
            .cornerRadius(10)
        }.navigationTitle(yemek.yemek_adi!)
        
    }
}

/*#Preview {
    DetaySayfa()
}*/
