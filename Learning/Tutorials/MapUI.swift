//
//  MapUI.swift
//  Learning
//
//  Created by Adam Kuzma on 8/26/24.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let parking = CLLocationCoordinate2D(latitude: 42.354528, longitude: -71.068369)
}

struct MapUI: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    var body: some View {
        Map() {
            Marker("Parking", coordinate: .parking)
        }
    }
}

#Preview {
    MapUI()
}
