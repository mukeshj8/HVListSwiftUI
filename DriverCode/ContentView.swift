//
//  ContentView.swift
//  DriverCode
//
//  Created by Mukesh Jain on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries: [Country] = []
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    List(countries, id: \.id){ ct in
                        NavigationLink(destination: CountryDetails(ct: ct)) {
                            VCountryCell(ct: ct)
                        }
                    }.navigationTitle("Countries")
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(countries, id: \.id){ ct in
                                NavigationLink(destination: CountryDetails(ct: ct)) {
                                    HCountryCell(ct: ct)
                                }
                            }
                        }.padding()
                    }.frame(height: 100)
                }
            }.onAppear {
                loadData()
            }
        }
        
    }
    
    func loadData(){
        countries = MockData.countries
    }
    
}

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 */
