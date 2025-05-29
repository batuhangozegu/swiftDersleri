//
//  Anasayfa.swift
//  FilmlerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct Anasayfa: View {
    @State private var kategorilerListesi = [Kategoriler]()
    
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(kategorilerListesi){ kategori in
                    NavigationLink(destination: FilmSayfa(kategori: kategori)){
                        KategoriItem(kategori: kategori)
                    }
                }
            }.navigationTitle("Kategoriler")
                .onAppear{
                    var liste = [Kategoriler]()
                    let k1 = Kategoriler(kategori_id: 1, kategori_adi: "Aksiyon")
                    let k2 = Kategoriler(kategori_id: 2, kategori_adi: "Drama")
                    let k3 = Kategoriler(kategori_id: 3, kategori_adi: "Bilim Kurgu")
                    
                    liste.append(k1)
                    liste.append(k2)
                    liste.append(k3)
                    
                    kategorilerListesi = liste
                }
        }
    }
}

#Preview {
    Anasayfa()
}
