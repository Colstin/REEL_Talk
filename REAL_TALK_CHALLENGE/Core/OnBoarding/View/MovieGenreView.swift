//
//  MovieGenreView.swift
//  REAL_TALK_CHALLENGE
//
//  Created by Colstin Donaldson on 10/8/23.
//

import SwiftUI
struct Genre: Identifiable {
    let id = UUID()
    let name: String
}


struct MovieGenreView: View {
   private let genres = ["Action", "Adventure", "Animation", "Biography", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "History", "Horror", "Mystery", "Reality", "Romance", "Sci-Fi", "Sports", "Thriller", "War", "Western"]
    @State private var selectedGenres = [String]()
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack {
                VStack(alignment: .leading) {
                    Spacer()
                    VStack(spacing: 10) {
                        Text("Select your top 3 generes for movies and TV")
                            .font(.title2)
                        Text( "0/3 selected")
                            .foregroundStyle(Color(.systemGray))
                    }
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                    
                    Spacer().frame(height: 20)
                    
                    ForEach(0..<genres.count, id: \.self){ index in
                        HStack {
                            ForEach(0..<3,id: \.self) { columnIndex in
                                let chipIndex = index * 3 + columnIndex
                                if chipIndex < genres.count {
                                    GenreChip(genre: genres[chipIndex])
                                        
                                }
                            }
                        }
                    }
                    Spacer()
                }
              
               

                
                NavigationLink {
                    AgreementView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Continue")
                        .modifier(SolidButtonModifier(paddingValue: 100, cornerValue: 10))
                }
                .padding(.bottom, 80)
         
            }
        }
        .modifier(BackButtonModifier(buttonImage: "chevron.left"))
    }
    
    private func toggleGenreSelection(_ genre: String) {
        if selectedGenres.contains(genre) {
            selectedGenres.removeAll { $0 == genre }
        } else {
            if selectedGenres.count < 3 {
                selectedGenres.append(genre)
            }
        }
    }
}


#Preview {
    MovieGenreView()
}
