//
//  Tip.swift
//  Tipsy
//
//  Created by 韩飞洋 on 2025/10/26.
//  Copyright © 2025 The App Brewery. All rights reserved.
//
import Foundation

struct Bill {
    var tipPct: Double? = 0.1
    var split: Double? = 2.0
    var total: Double?

    func count() -> Double {
        return total! * (1 + tipPct!) / split!
    }
}
