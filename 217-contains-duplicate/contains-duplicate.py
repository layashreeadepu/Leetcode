class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        hst_st = set()
        for x in nums:
            if x in hst_st:
                return True
            hst_st.add(x)    
        return False

