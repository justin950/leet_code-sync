class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> counts = {};
    List<int> result = [];
    
    
    for (int num in nums1) {
      counts[num] = (counts[num] ?? 0) + 1;
    }
    
    for (int num in nums2) {
      if (counts.containsKey(num) && counts[num]! > 0) {
        result.add(num);
        counts[num] = counts[num]! - 1;
      }
    }
    
    return result;
  }
}