//
//  HotelsCases.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation

enum HotelsCases: String, CaseIterable, Identifiable{
    var id: Self { self }
    case a1
    case a2
    case a3
    case a4
    
    var text: String {
        switch self {
        case .a1:
            return "Sheraton Fallsview"
            
        case .a2:
            return "Crowne Plaza Fallsview"
        case .a3:
            return "Hilton Niagara Falls"
        case .a4:
            return "Wyndham Fallsview Hotel"
        }
    }
    
    var longText: String {
        switch self {
        case .a1:
            return "The new Sheraton Fallsview is Niagara’s premier luxury Fallsview hotel and has just has just completed a $50 million transformation. Situated directly across from Niagara Falls in the heart of the tourist district, this 4-Diamond hotel offers the Best Fallsview Guaranteed and several of the top rated amenities in Niagara Falls. The hotel features 669 newly renovated guestrooms and suites, more than half featuring spectacular Fallsviews from floor-to-ceiling windows and is the only hotel in Niagara Falls to offer guestrooms with a balcony overlooking the Falls."
        case .a2:
            return "The 4-star Crowne Plaza Fallsview sits just steps from the Niagara Falls and is revered for its balance of world-class charm and modern refinement. Each of the 234 guestrooms and suites offer upgraded amenities including our signature Sleep Advantage program, and many of them feature spectacular views of the Niagara Falls."
        case .a3:
            return "Overlooking the American and Canadian Falls, the Hilton Niagara Falls/Fallsview Hotel & Suites is connected by a covered skyway to Fallsview Casino Resort's Entertainment Centre and Galleria Shops & Dining. Rising 53 stories above Niagara Falls, this high-rise hotel offers guests luxurious accommodations, three on-site restaurants, two lounges, snack & gift shop, and Starbucks with superior full-service and the perfect location to experience all that Niagara Falls has to offer."
        case .a4:
            return "The Wyndham Fallsview Hotel is a four-diamond property in Niagara Falls, Canada. It's located in the heart of the Fallsview district and is connected to Fallsview Casino and the OLG Stage at Fallsview Casino, which features gaming, concerts, and shopping 24 hours a day. The hotel features Ruth's Chris Steak House, IHOP Restaurant, and TGI Fridays Restaurant & Sports Bar. Other amenities include valet parking and an indoor heated pool."
        }
    }
}
