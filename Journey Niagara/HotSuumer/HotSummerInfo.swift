//
//  HotSummerInfo.swift
//  Journey Niagara
//
//  Created by Nicolae Chivriga on 13/08/2024.
//

import Foundation
import SwiftUI

enum HotSummerInfo: String, CaseIterable, Identifiable  {
    var id: Self { self }
    case MONDAY
    case TUESDAYS
    case WEDNESDAYS
    case FRIDAYS
    case SUNDAYS
}
