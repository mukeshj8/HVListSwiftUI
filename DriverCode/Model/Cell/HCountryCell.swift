//
//  HCountryCell.swift
//  DriverCode
//
//  Created by Mukesh Jain on 18/04/22.
//

import SwiftUI

struct HCountryCell: View {

    var ct: Country
    
    var body: some View {
        VStack{
            Image(ct.flagImg).resizable().frame(width: 80, height: 50, alignment: .leading)
            Text(ct.name).font(.system(size: 13))//.frame(maxWidth: 20, alignment: .leading)
            Text(ct.capital).font(.system(size: 10))//.frame(maxWidth: 20, alignment: .leading)
        }.frame(width: 90, alignment: .center)
    }
}
