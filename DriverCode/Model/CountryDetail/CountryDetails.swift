//
//  CountryDetails.swift
//  DriverCode
//
//  Created by Mukesh Jain on 18/04/22.
//

import SwiftUI

struct CountryDetails: View {
    
    var ct: Country
    
    var body: some View {
        VStack{
            Image(ct.flagImg).resizable().frame(width: 170, height: 100, alignment: .leading)
            Text(ct.name).font(.system(size: 30))//.frame(maxWidth: 20, alignment: .leading)
            Text(ct.capital).font(.system(size: 20))//.frame(maxWidth: 20, alignment: .leading)
        }.frame(width: .infinity, alignment: .center)
    }
}

struct CountryDetails_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetails(ct: MockData.country04)
    }
}
