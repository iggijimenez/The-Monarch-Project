//
//  LocationsDataService.swift
//  MapTest
//

import Foundation
import MapKit

class LocationsDataService {
    
    //    let annotations = [
    //        Place(name: "Mont", coordinate: CLLocationCoordinate2D(latitude: 38.440740, longitude: -122.684596)),
    //        Place(name: "4th street", coordinate: CLLocationCoordinate2D(latitude: 38.4401872, longitude: -122.7140828)),
    //        Place(name: "unknown location", coordinate: CLLocationCoordinate2D(latitude: 38.443551, longitude: -122.717873)),
    //        Place(name: "piner road", coordinate: CLLocationCoordinate2D(latitude: 38.472084, longitude: -122.732386)),
    //        Place(name: "Rohert Park", coordinate: CLLocationCoordinate2D(latitude: 38.327305, longitude: -122.680399)),
    //        Place(name: "Petaluma 1", coordinate: CLLocationCoordinate2D(latitude: 38.235570, longitude: -122.634991)),
    //        Place(name: "petaluma 2", coordinate: CLLocationCoordinate2D(latitude: 38.231973, longitude: -122.636538)),
    //        Place(name: "Petaluma 3", coordinate: CLLocationCoordinate2D(latitude: 38.240320, longitude: -122.621978))
    //    ]
    
    
    static let locations: [Location] = [
        Location(
            name: "Dreamer Mural",
            cityName: "Santa Rosa",
            coordinates: CLLocationCoordinate2D(latitude: 38.440740, longitude: -122.684596),
            description: "We painted a mural to make our community more aware of the immigrants in Sonoma County, their beautiful presence in our community, and the power of unity as one. With the collaboration of Art Start Santa Rosa, Montgomery High Schools art department, and many other organizations, we brought to life the 12 by 32 ft transportable piece. The mural was painted and funded entirely by members of our community, and the mural itself was designed by Rima Makaryan, an immigrant herself, and a member of our team. The mural is now ready for public display, located in a hidden part of Montgomery High School in Santa Rosa. Soon, however, we plan on bringing it to a more accessible",
            imageNames: [
                "dreamer_mural"
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Bollywood Bar and Clay Oven",
            cityName: "Santa Rosa",
            coordinates: CLLocationCoordinate2D(latitude: 38.4401872, longitude: -122.7140828),
            description: "There is writing on this mural/post.",
            imageNames: [
                "bollywood_bar_butterfly"
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Brew Butterfly",
            cityName: "Santa Rosa",
            coordinates: CLLocationCoordinate2D(latitude: 38.443551, longitude: -122.717873),
            description: "Brew, being one of the most beautifully open hubs for LGBTQ acceptance, is a perfect host for this butterfly, a symbol of the intersectionality of the issues we face today.",
            imageNames: [
                "brew_butterfly"
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Verity Santa Rosa",
            cityName: "Santa Rosa",
            coordinates: CLLocationCoordinate2D(latitude: 38.472084, longitude: -122.732386),
            description: "This butterfly represents the story of a young boy who immigrated to California from Guatemala City with his family when he was 7 years old. Guatemala city is known for its rates of gang violence and poverty. Before immigrating without documentation, his family attempted to come legally numerous times. But the lines and wait times were too long, and the fees too high for his family. Today, he has found what his family has hoped for in Sonoma County, he is an outstanding student at his high school, a team captain for his cross country team, and will be applying to colleges in the fall. A video telling his story in dept is coming soon.",
            imageNames: [
                "verity_butterfly"
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
    ]
    
}
