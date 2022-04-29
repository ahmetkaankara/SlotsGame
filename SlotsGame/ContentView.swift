//
//  ContentView.swift
//  SlotsGame
//
//  Created by Ahmet Kaan Kara on 9.03.2022.
//

import SwiftUI



struct ContentView: View {
    
    @State var credits = 1000
    @State var slots1 = "apple"
    @State var slots2 = "apple"
    @State var slots3 = "apple"
    
    var body: some View {
        ZStack{
            
            
            
            
            VStack{
                Text("SwiftUI Slots!")
                    .font(.largeTitle)
                    .padding(.top, 25.0)
                Spacer()
                Text("Credits: " + String(credits))
                Spacer()
                
                HStack{
                    Image(slots1).resizable().scaledToFit()
                    Image(slots2).resizable().scaledToFit()
                    Image(slots3).resizable().scaledToFit()
                    Spacer()
                    
                }
                Spacer()
                
                
                Button {
                    
                    credits -= 5
                    let rand1 = Int.random(in:  1...3)
                    let rand2 = Int.random(in:  1...3)
                    let rand3 = Int.random(in:  1...3)
                    
                    if rand1 == rand2 && rand1 == rand3{
                        credits += 50
                    }
                    
                    if rand1 == 1 {
                        slots1 = "apple"
                    }
                    else if rand1 == 2{
                        slots1 = "cherry"
                    }
                    else{
                        slots1 = "star"
                    }
                    
                    if rand2 == 1 {
                        slots2  = "apple"
                    }
                    else if rand2 == 2{
                        slots1 = "cherry"
                    }
                    else{
                        slots2 = "star"
                    }
                    
                    if rand3 == 1 {
                        slots3 = "apple"
                    }
                    else if rand3 == 2{
                        slots3 = "cherry"
                    }
                    else{
                        slots3 = "star"
                    }
                    

                } label: {
                    Text("Spin").frame(width: 130, height: 40).background(Color.red).cornerRadius(30)
                        .foregroundColor(Color.white)
                        .font(.system(size: 20).bold())
                    
                    

                }

                Spacer()
                
                
                
                
                
            }
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

