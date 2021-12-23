//
//  ViewController.swift
//  LeetCode
//
//  Created by 박탁인 on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let str = "dvdf"
        let str = "abcabcbb"
//        let str = "pwwkew"
//        let str = "au"
        LongestSubstring().lengthOfLongestSubstring(str)
    }


}


class LongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        if s.isEmpty { return 0 }
        
        let arr = Array(s)
        
        var substring = ""
    
        var max = 0
        
        for current in 0 ..< arr.count {
            if let s_idx = substring.lastIndex(of: arr[current]) {

                if substring.count > max {
                    max = substring.count
                }
                let startIdx = substring.index(s_idx, offsetBy: 1)
                substring = String(substring[startIdx...])
            }
            
            substring += String(arr[current])
            
        }
        
        if max < substring.count {
            max = substring.count
        }
        return max
    }
}
