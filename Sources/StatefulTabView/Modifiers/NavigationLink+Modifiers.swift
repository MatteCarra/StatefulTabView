//
//  File.swift
//  
//
//  Created by Matteo Carrara on 16/09/21.
//

import SwiftUI

private struct NavigationLinkTabBarModifier: ViewModifier {
    @EnvironmentObject var navigationTabViewVisibility: TabViewBarVisibility

    func body(content: Content) -> some View {
        return content
            .onAppear {
                navigationTabViewVisibility.hide = true
            }
            .onDisappear {
                navigationTabViewVisibility.hide = false
            }
    }
}

public extension View {
    func hideTabViewBar() -> some View{
        return self
            .modifier(NavigationLinkTabBarModifier())
    }
}
