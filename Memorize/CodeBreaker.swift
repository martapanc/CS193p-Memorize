//
//  CodeBreaker.swift
//  Memorize
//
//  Created by Marta Pancaldi on 1/4/26.
//

import SwiftUI

struct CodeBreakerContentView: View {

    var body: some View {
        VStack {
            pegs(colors: [.red, .blue, .red, .yellow])
            pegs(colors: [.red, .blue, .red, .red])
            pegs(colors: [.green, .yellow, .red, .blue])
        }
    }
    
    func pegs(colors: Array<Color>) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(colors[index])
            }
            MatchMarkers(matches: [.exact, .nomatch, .partial, .partial])
        }.padding(10)
    }
}



#Preview {
    CodeBreakerContentView()
}
