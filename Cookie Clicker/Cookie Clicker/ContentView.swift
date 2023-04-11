//
//  ContentView.swift
//  Cookie Clicker
//
//  Created by Christian Hiemstra on 21/03/2023.
//

import SwiftUI
import FluidGradient


func getRgb(_ r: Int, _ g: Int, _ b: Int) -> Color {
    return Color(red: Double(r)/255, green: Double(g)/255, blue: Double(b)/255)
}
struct ContentView: View {
    @AppStorage("cookies", store: .standard) var cookies: Int = 0
    
    var body: some View {
        ZStack {
            FluidGradient(blobs: [getRgb(239, 226, 178), getRgb(189, 140, 97), getRgb(132, 86, 60)],
                                      highlights: [getRgb(239, 226, 178), getRgb(189, 140, 97), getRgb(132, 86, 60)],
                                      speed: 0.5,
                                              blur: 0.75)
                                  .background(.quaternary)
            VStack {
                HStack {
                    Text("Cookies: \(cookies)").font(.title).fontWeight(.bold)
                    Spacer()
                    Button(action: {
                        cookies = 0
                    }, label: {
                        Text("Reset Cookies...").fontWeight(.bold).font(.title)
                    }).buttonStyle(.plain)
                }
                Spacer()
                Button(action: {
                    cookies = cookies + 1
                }, label: {
                    Image("Cookie").resizable().frame(width: 250, height: 250)
                }).buttonStyle(.plain)
                Spacer()
            }.frame(width:600, height:400)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
