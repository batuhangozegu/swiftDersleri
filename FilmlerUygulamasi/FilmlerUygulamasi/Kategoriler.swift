//
//  Kategoriler.swift
//  FilmlerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import Foundation

class Kategoriler : Identifiable {
    
    var kategori_id : Int?
    var kategori_adi : String?
    
    init(){
        
    }
    
    init(kategori_id: Int?, kategori_adi: String?) {
        self.kategori_id = kategori_id
        self.kategori_adi = kategori_adi
    }
    
}
