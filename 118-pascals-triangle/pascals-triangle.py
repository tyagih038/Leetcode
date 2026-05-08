class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        triangle = [] 
        for i in range(numRows):
            row = []
            variable = 1
            for j in range(i+1):
                row.append(variable)
                variable = variable*(i-j)//(j+1)
            triangle.append(row)
        return triangle

