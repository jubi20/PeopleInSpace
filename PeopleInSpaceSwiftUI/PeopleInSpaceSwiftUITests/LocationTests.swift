import CoreLocation
import XCTest
@testable import PeopleInSpaceSwiftUI

final class LocationTests: XCTestCase {
    func testLocationKeepsProvidedCoordinate() {
        let coordinate = CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)

        let location = Location(coordinate: coordinate)

        XCTAssertEqual(location.coordinate.latitude, coordinate.latitude)
        XCTAssertEqual(location.coordinate.longitude, coordinate.longitude)
    }
}
