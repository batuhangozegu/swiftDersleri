//
//  ContentView.swift
//  KisilerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct Anasayfa: View {
    
    @State private var kisilerListesi = [Kisiler]()
    @State private var aramaKelimesi = ""
    
    func sil(at offsets: IndexSet){
        let kisi = kisilerListesi[offsets.first!]
        kisilerListesi.remove(at: offsets.first!)
        print("Kisi Silindi: \(kisi.kisi_Id!)")
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(kisilerListesi){ kisi in
                    NavigationLink(destination: KisiDetaySayfa(kisi: kisi)){
                        KisilerSatir(kisi: kisi)
                    }
                }.onDelete(perform: sil)
            }.navigationTitle("Kişiler")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink(destination: KisiKayitSayfa()){
                            
                            Image(systemName: "plus")
                            
                        }
                    }
                }.onAppear(){
                    var liste = [Kisiler]()
                    let k1 = Kisiler(kisi_Id: 1, kisi_ad: "Batuhan", kisi_tel: "1111")
                    let k2 = Kisiler(kisi_Id: 2, kisi_ad: "Zeynep", kisi_tel: "2222")
                    let k3 = Kisiler(kisi_Id: 3, kisi_ad: "Mehmet", kisi_tel: "3333")
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    kisilerListesi = liste
                }
        }.searchable(text: $aramaKelimesi, prompt:"Ara")
            .onChange(of: aramaKelimesi){_,s in
                print("Kisi Ara : \(s)")
            }
    }
}

#Preview {
    Anasayfa()
}
