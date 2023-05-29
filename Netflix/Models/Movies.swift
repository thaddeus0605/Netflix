//
//  Movies.swift
//  Netflix
//
//  Created by Thaddeus Dronski on 5/29/23.
//

import Foundation


struct Movies: Codable {
    let id: Int
    let media_type: String
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_image_path: String?
    let release_date: String?
    let vote_count: Int
    let vote_average: Double
    
}




/*
 
 id = 840326;
 "media_type" = movie;
 "original_language" = fi;
 "original_title" = Sisu;
 overview = "Deep in the wilderness of Lapland, Aatami Korpi is searching for gold but after he stumbles upon Nazi patrol, a breathtaking and gold-hungry chase through the destroyed and mined Lapland wilderness begins.";
 popularity = "2472.303";
 "poster_path" = "/pnQYjDxqZ3C6reI8N0MfNi4NMkZ.jpg";
 "release_date" = "2023-01-27";
 title = Sisu;
 video = 0;
 "vote_average" = "7.5";
 "vote_count" = 451;
 */
