//
//  ContentView.swift
//  FilmlerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import SwiftUI

struct FilmSayfa: View {
    @State private var filmlerListesi = [Filmler]()
    var kategori = Kategoriler()
    
    
    var body: some View {
            GeometryReader{ geometry in
                let ekranGenislik = geometry.size.width
                let itemGenislik = (ekranGenislik - 40)/2
                // 10 X 20 X 10 = 40
                ScrollView{
                    
                    LazyVGrid(columns:
                                [GridItem(.flexible()),GridItem(.flexible())],spacing: 20){
                        ForEach(filmlerListesi){ film in
                            NavigationLink(destination: DetaySayfa(film:film)){
                                FilmItem(film: film, genislik: itemGenislik)
                            }
                        }
                            
                    }
                }.padding(10)
                    .navigationTitle(kategori.kategori_adi!)
                    .onAppear{
                        var liste = [Filmler]()
                        let k1 = Kategoriler(kategori_id: 1, kategori_adi: "Aksiyon")
                        let k2 = Kategoriler(kategori_id: 2, kategori_adi: "Drama")
                        let k3 = Kategoriler(kategori_id: 3, kategori_adi: "Bilim Kurgu")
                        let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
                        let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")
                        let y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Nuri Bilge Ceylan")
                        let y4 = Yonetmenler(yonetmen_id: 4, yonetmen_ad: "Roman Polanski")
                        let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2014, film_resim: "django", kategori: k1, yonetmen: y1)
                        let f2 = Filmler(film_id: 2, film_ad: "Interstellar", film_yil: 2015, film_resim: "interstellar", kategori: k3, yonetmen: y2)
                        let f3 = Filmler(film_id: 3, film_ad: "Inception", film_yil: 2010, film_resim: "inception", kategori: k3, yonetmen: y2)
                        let f4 = Filmler(film_id: 4, film_ad: "Anadoluda", film_yil: 2011, film_resim: "birzamanlaranadoluda", kategori: k2, yonetmen: y3)
                        let f5 = Filmler(film_id: 5, film_ad: "The Pianist", film_yil: 2008, film_resim: "thepianist", kategori: k2, yonetmen: y4)
                        let f6 = Filmler(film_id: 6, film_ad: "The Hateful Eight", film_yil: 2017, film_resim: "thehatefuleight", kategori: k1, yonetmen: y1)
                        
                        liste.append(f1)
                        liste.append(f2)
                        liste.append(f3)
                        liste.append(f4)
                        liste.append(f5)
                        liste.append(f6)
                        
                        let finalListe = liste.filter({ $0.kategori!.kategori_id == kategori.kategori_id!})
                        
                        filmlerListesi = finalListe
                        
                }
        }
    }
}

/*#Preview {
    FilmSayfa()
}*/
