Function          fibnumber(integer number)
{ 
	if num =< 0 then
	output (" Number must be a positive integer") 
	return

     else if num = 0 OR num = 1 then
        return num
      else return fibnumber(num-1) + fibnumber(num - 2)
}
function           fibsequence(integer num) {
	string fiseq <---  ""
for 1 <--- o to num
 fibseq <--- fibseq + fibnumber(i) + ","
	end for
output(" fibseq is :"+fibseq)
end function

