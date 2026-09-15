class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = Dictionary<Int, Int>()   
    
    for i in 0..<nums.count {
        let complement = target - nums[i]

        if let j = dict[complement] {
            return [j,i]
        }
        dict[nums[i]] = i
    }
    return []
    }
}