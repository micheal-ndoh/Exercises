function longestIncreasingSubsequence(arr):
    if length(arr) == 0:
        return ([], 0)
    
    n = length(arr)
    dp = array of size n initialized to 1
    max_length = 1
    max_index = 0

    for i from 1 to n-1:
        for j from 0 to i-1:
            if arr[j] < arr[i] and dp[j] + 1 > dp[i]:
                dp[i] = dp[j] + 1
        
        if dp[i] > max_length:
            max_length = dp[i]
            max_index = i

    # Reconstruct the LIS
    lis = []
    for i from n-1 to 0:
        if dp[i] == max_length:
            lis.append(arr[i])
            max_length -= 1
    
    lis.reverse()  # Reverse to get the correct order
    return (lis, length(lis))
