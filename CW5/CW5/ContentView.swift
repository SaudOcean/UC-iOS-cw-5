//
//  ContentView.swift
//  CW5
//
//  Created by Saud Al Mutairi on 9/14/22.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🥳","😇","😈","😡","😲","🤪","🤓"]
    @State var emote = ""
    var body: some View {
        VStack{
        Text("اختار الاموجي اللي يعبر عنك اليوم")
                .padding()
        Text(emote)
                .font(.system(size: 80))
                
            ScrollView(.horizontal){
        HStack{
            ForEach(emojis, id: \.self) { emoji in
                    
                Text(emoji)
                    .font(.largeTitle)
                    .frame(width: 50, height:50)
                    .background(Color.red)
                    .clipShape(Circle())
                    .onTapGesture {
                        emote = emoji
                    }
                    
            }
            }
            
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

