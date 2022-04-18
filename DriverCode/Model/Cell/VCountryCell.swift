//
//  VCountryCell.swift
//  DriverCode
//
//  Created by Mukesh Jain on 18/04/22.
//

import SwiftUI

struct VCountryCell: View {
    
    var ct: Country
    
    var body: some View {
        HStack{
            Image(ct.flagImg).resizable().frame(width: 50, height: 30, alignment: .leading)
            VStack {
                Text(ct.name).frame(maxWidth: .infinity, alignment: .leading)
                Text(ct.capital).font(.system(size: 10)).frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
