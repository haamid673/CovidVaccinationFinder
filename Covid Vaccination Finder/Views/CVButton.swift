//
//  CVButton.swift
//  Covid Vaccination Finder
//
//  Created by Haamid Farhaan on 23/10/23.
//

import SwiftUI

struct CVButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        
    }
}

#Preview {
    CVButton(title: "Value", background: .pink) {
        //Action
    }
}
