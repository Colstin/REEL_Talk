//
//  PageIndicatorModifier.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/7/23.
//

import SwiftUI

struct PageIndicatorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .onAppear {
                UIPageControl.appearance().currentPageIndicatorTintColor = .orange
                UIPageControl.appearance().pageIndicatorTintColor = .white
            }
            .onDisappear {
                UIPageControl.appearance().currentPageIndicatorTintColor = nil
                UIPageControl.appearance().pageIndicatorTintColor = nil
            }
    }
}


