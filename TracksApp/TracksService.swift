//
//  TracksService.swift
//  TracksApp
//

import Foundation

struct TracksResponse: Codable {
    // TODO:
}

struct Track: Codable {
    // TODO:
}

class TracksService {
    private let tracksURL = URL(string: "https://voloco.resonantcavity.com/top_tracks/public?type=hot")!
    
    func fetchTracks() async throws -> TracksResponse {
        // TODO:
        return TracksResponse()
    }
}
