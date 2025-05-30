//
//  Filmler.swift
//  FilmlerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import Foundation

class Filmler : Identifiable {
    
    var film_id: Int?
    var film_ad: String?
    var film_yil: Int?
    var film_resim: String?
    var kategori: Kategoriler?
    var yonetmen: Yonetmenler?
    
    init(){
        
    }
    
    init(film_id: Int?, film_ad: String? , film_yil: Int?, film_resim: String?, kategori: Kategoriler?, yonetmen: Yonetmenler?) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.film_resim = film_resim
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
    
}
