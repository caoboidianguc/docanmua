//
//  DoCanMuaApp.swift
//  DoCanMua
//
//  Created by Quang Vu on 10/23/21.
//

import SwiftUI

@main
struct DoCanMuaApp: App {
    @ObservedObject var canmua = DuLieuMua()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(danhMucCanMua: $canmua.data){
                    canmua.save()
                }
                
            }.onAppear {
                canmua.load()
            }
        }
        
    }
}
