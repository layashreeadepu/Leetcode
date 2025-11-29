

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hmap = {} 
        for i, x in enumerate(nums):
            rem = target - x
            if rem in hmap:
                return [hmap[rem], i]
            hmap[x] = i
        return []