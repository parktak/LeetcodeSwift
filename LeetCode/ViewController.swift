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
        var dic = Dictionary<Character, [Int]>()
        for (i, str) in arr.enumerated() {
            if dic[str] == nil {
                dic[str] = [Int]()
            }
            dic[str]?.append(i)
        }
        
        var max = 0
        var f = 0
        var l = 0
        
        dic.filter { $0.value.count >= 2 }.forEach { item in
            if let first = item.value.first, let last = item.value.last {
                if max < last - first {
                    max = last - first
                    f = first
                    l = last
                }
            }
        }
        let startIndex = s.index(s.startIndex, offsetBy: f)
        let lastIndex = s.index(s.startIndex, offsetBy: l)
        
        longest = String(s[startIndex ... lastIndex])
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

