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
//            pwwkew
        if s.isEmpty { return 0 }
        
        let arr = Array(s)
        var start = 0
        var longestSubstring = ""
        
        var substring = String(arr[0])
        while start < arr.count {
            let startChar = arr[start]
            
            for i in start + 1 ..< arr.count {
                
                if startChar == arr[i] {
                    if longestSubstring.count < substring.count {
                        longestSubstring = substring                        
                    }
                    substring = ""
                    break
                }
                substring += String(arr[i])
                
            }
            start += 1
        }
        
        if longestSubstring.count < substring.count {
            longestSubstring = substring
        }
        return longestSubstring.count
    }
}
