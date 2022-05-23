//
//  ProfilPhotoMod.swift
//  Edit Page
//
//  Created by Tristan Aly on 23/05/2022.
//

import SwiftUI

extension Image{
    
    func profilPhotoMod() -> some View {
        self
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
    }
}
