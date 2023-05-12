//
//  UberCloneApp.swift
//  UberClone
//
//  Created by chiamakabrowneyes on 5/12/23.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(locationViewModel)
        }
    }
}
