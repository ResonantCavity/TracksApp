//
//  TracksService.swift
//  TracksApp
//
//  Created by Corey Walo on 1/14/25.
//

import Foundation

struct TracksResponse: Codable {
    let offset: Int
    let done: Bool
    let tracks: [Track]
    
    enum CodingKeys: String, CodingKey {
        case offset = "next_offset"
        case done
        case tracks = "data"
    }
}

struct Track: Codable {
    let id: String
    let userId: Int
    let userName: String
    let title: String
    let trackURL: String
    let durationSeconds: Int
    let genre: String
    let playCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case userId = "user_id"
        case userName = "user_name"
        case title
        case trackURL = "signed_track_url"
        case genre
        case playCount = "play_count"
        case durationSeconds = "duration_seconds"
    }
}

class TracksService {
    private let tracksURL: URL = URL(string: "https://voloco.resonantcavity.com/top_tracks/public?type=hot")!
    
    // TODO: Implement
    func fetchTracks() async throws -> TracksResponse {
        return TracksResponse(offset: 0, done: false, tracks: [])
    }
}
