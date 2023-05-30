//ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        // グー画像を指定
        Image("gu")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
