//ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // グー画像を指定
            Image("gu")
                .resizable()
                .scaledToFit()
            // じゃんけんの種類を指定
            Text("グー")
            
            Button {
                print("タップされたよ！")
            } label: {
                Text("じゃんけんをする")
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
