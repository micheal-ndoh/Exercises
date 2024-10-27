function                   longestIncreasingSubsequence(arr):
                 n = length(arr)
                 if n == 0:
                 return ([], 0)
    
                 dp = array of size n initialized to 1
                prev = array of size n initialized to -1
             max_length = 1
             max_index = 0

    for i from 1 to n-1:
        for j from 0 to i-1:
            if arr[j] < arr[i] and dp[j] + 1 > dp[i]:
                dp[i] = dp[j] + 1
                prev[i] = j
        
        if dp[i] > max_length:
            max_length = dp[i]
            max_index = i

    lis = []
    while max_index != -1:
        lis.prepend(arr[max_index])
        max_index = prev[max_index]
    
    return (lis, max_length)



































