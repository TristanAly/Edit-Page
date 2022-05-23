//
//  EditProfil.swift
//  Edit Page
//
//  Created by Tristan Aly on 23/05/2022.
//

import SwiftUI

struct EditProfil: View {
    
    @State var changePhoto = false
    @State var openCameraRoll = false
    @State var selectedImage = UIImage()
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            Button(action: {
                changePhoto = true
                openCameraRoll = true
                
            }, label: {
                if changePhoto {
                    Image(uiImage: selectedImage)
                        .profilPhotoMod()
                }else {
                    Image("colorPro")
                        .profilPhotoMod()
                }
            })
            
            Image(systemName: "plus")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(Circle())
            
        }
        .sheet(isPresented: $openCameraRoll) {
            ImagePicker(selectedPhoto: $selectedImage, sourceType: .photoLibrary)
            
        }
    }
}

struct EditProfil_Previews: PreviewProvider {
    static var previews: some View {
        EditProfil(changePhoto: true)
    }
}
