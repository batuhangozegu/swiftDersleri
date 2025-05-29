//
//  KategoriItem.swift
//  FilmlerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct KategoriItem: View {
    
    var kategori = Kategoriler()
    
    var body: some View {
        Text(kategori.kategori_adi!)
    }
}

/*#Preview {
    KategoriItem()
}*/
