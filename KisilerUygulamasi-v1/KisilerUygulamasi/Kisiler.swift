//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by Batuhan Gözegü on 28.05.2025.
//

import Foundation

class Kisiler : Identifiable{
    
    var kisi_Id: Int?
    var kisi_ad: String?
    var kisi_tel: String?

    init(){
        
    }
    
    init(kisi_Id: Int? , kisi_ad: String? , kisi_tel: String?) {
        self.kisi_Id = kisi_Id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
    
}
