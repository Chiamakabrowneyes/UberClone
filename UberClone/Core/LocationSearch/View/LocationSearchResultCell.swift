//
//  LocationSearchResultCell.swift
//  UberClone
//
//  Created by chiamakabrowneyes on 5/13/23.
//

import SwiftUI

struct LocationSearchResultCell: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle.fill").resizable().foregroundColor(.blue).accentColor(.white).frame(width: 40, height: 40)
            VStack(alignment: .leading, spacing: 4) {
                Text(title).font(.body)
                Text(subtitle).font(.body)
                
                Divider()
            }
            .padding(.leading, 8)
            .padding(.vertical, 8)
        }
        .padding(.leading)
    }
}

struct LocationSearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchResultCell(title: "Star bucks", subtitle: "123 Main street")
    }
}
