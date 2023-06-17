//ContentView.swift

import SwiftUI

struct ContentView: View {
    
    // じゃんけんの結果を格納する変数（0=初期画面、1=グー,2=チョキ,3=パー）
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            
            // じゃんけんの数字が0だったら
            if answerNumber == 0 {
                // 初期画面のテキストを表示
                Text("これからじゃんけんをします！")
            } else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グー画像を指定
                // グー画像を指定
                Image("gu")
                    .resizable()
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("グー")
            } else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキ画像を指定
                // チョキ画像を指定
                Image("choki")
                    .resizable()
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("チョキ")
            } else {
                // じゃんけんの数字が「1」、「2」以外だったら、パー画像を指定
                // パー画像を指定
                Image("pa")
                    .resizable()
                    .scaledToFit()
                // じゃんけんの種類を指定
                Text("パー")
            }

            
            Button {
                // 新しいじゃんけんの結果を一時的に格納する変数を設ける
                var newAnswerNumber = 0
                
                // ランダムに結果を出すが、前回の結果と異なる場合のみ採用
                // repeat は繰り返しを意味する
                repeat {
                    // 1,2,3の数値をランダムに算出
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    // 前回と同じ結果の時は、再度ランダムに数値を出す
                    // 異なる結果の時は、repeatを抜ける
                } while answerNumber == newAnswerNumber
                
                // 新しいじゃんけんの結果を格納
                answerNumber = newAnswerNumber
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
