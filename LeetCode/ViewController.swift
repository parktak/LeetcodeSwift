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
        let str = "babad"
//        let str = "pwwkew"
//        let str = "au"
        LongestSubstring().longestPalindrome(str)
    }


}


class LongestSubstring {
    func longestPalindrome(_ s: String) -> String {
        
        
        let arr = Array(s)
        
        var longest = String(arr[0])
        
        var max = 0
        // ccc
        // acc
        // acabb
        var standard = 0
        var beforeStr = Character("")
        
        var substring = ""
        
        var length = 0
        arr.forEach { str in
//            if str == beforeStr && arr[standard] == str {
//                length += 1
//                if max < length {
//                    
//                }
//            } else if standard == str {
//                
//            } else {
//                length += 1
//            }
            
            beforeStr = str
            substring += String(str)
        }
        
//        longest = String(s[startIndex ... lastIndex])
        return longest
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
            
            if s.isEmpty { return 0 }
            
            let arr = Array(s)
            
            var substring = ""
        
            var max = 0
            
            for current in 0 ..< arr.count {
                if let s_idx = substring.lastIndex(of: arr[current]) {

                    
    //                let startIdx = substring.index(s_idx, offsetBy: 1)
                    let result = String(substring[s_idx...])
                    
                    if result.count + 1 > max {
                        max = result.count + 1
                    }
                }
                
                substring += String(arr[current])
                
            }
            
            return max
        }
}

