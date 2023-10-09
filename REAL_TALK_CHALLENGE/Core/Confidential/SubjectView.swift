//
//  SubjectView.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/9/23.
//

import SwiftUI

struct Subject: Identifiable {
    let id = UUID()
    let name: String
}

struct SubjectView: View {
    let subjects = ["Action", "Adventure", "Animation", "Biography", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "History", "Horror", "Mystery", "Reality", "Romance", "Sci-Fi", "Sports", "Thriller", "War", "Western"]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("Programming languages:")
                    .foregroundStyle(.white)
                    .font(.title2)
                    .bold()
                
                Spacer().frame(height: 20)
                
                ForEach(0..<subjects.count, id: \.self){ index in
                    HStack {
                        ForEach(0..<4,id: \.self) { columnIndex in
                            let chipIndex = index * 4 + columnIndex
                            if chipIndex < subjects.count {
                                SubjectChip(subject: subjects[chipIndex])
                                   
                            }
                            
                        }
                    }
                    
                }
                
                
            }
        }
    }
}

#Preview {
    SubjectView()
}
