//
//  Movie.swift
//  Netflix Clone
//
//  Created by Sumanth Reddy Gada on 31/07/24.
//

import Foundation

struct TrendingTitlesResponse : Codable {
    let results: [Title]
}
struct Title: Codable {
    let id: Int
    let media_type: String?
    let name: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
}


/*
 adult = 0;
 "backdrop_path" = "/tEjnoEdE2PtFp9UcqQse5hDgW8U.jpg";
 "first_air_date" = "1999-03-28";
 "genre_ids" =             (
     16,
     35,
     10765
 );
 id = 615;
 "media_type" = tv;
 name = Futurama;
 "origin_country" =             (
     US
 );
 "original_language" = en;
 "original_name" = Futurama;
 overview = "The adventures of a late-20th-century New York City pizza delivery boy, Philip J. Fry, who, after being unwittingly cryogenically frozen for one thousand years, finds employment at Planet Express, an interplanetary delivery company in the retro-futuristic 31st century.";
 popularity = "643.333";
 "poster_path" = "/sdJcX2cXirwQurLLlrDLYov7hcD.jpg";
 "vote_average" = "8.385";
 "vote_count" = 3166;
 */
