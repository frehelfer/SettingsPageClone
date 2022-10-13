//
//  IconView.swift
//  SettingsPage
//
//  Created by Frédéric Helfer on 11/10/22.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        List {
            Image(systemName: "wifi")
                .padding(.trailing, 4)
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
