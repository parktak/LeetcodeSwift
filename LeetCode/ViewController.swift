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
//        let str = "pwwkew"
        let str = "abcabcbb"
        LongestSubstring().lengthOfLongestSubstring(str)
    }


}


class LongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        if s.isEmpty { return 0 }
        
        let arr = Array(s)
        
        var longestSubstring = ""
        
        var substring = ""
    
        for start in arr.indices {
            
            for i in start  ..< arr.count {
                
                if substring.contains(arr[i]) {
                    if longestSubstring.count < substring.count {
                        longestSubstring = substring
                    }
                    substring = ""
                    break
                }
                substring += String(arr[i])
                
            }
        }
        
        if longestSubstring.count < substring.count {
            longestSubstring = substring
        }
        return longestSubstring.count
    }
}
