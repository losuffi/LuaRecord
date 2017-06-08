--Day1
--流程控制 输入输出 数组
--[Target: --Get a array by user input,then deal the array with quick sort,final print the array]
as={}
bs={10,9,8,8}
local size=1
while(true)
do
temp=io.read()
if(temp=="")
then
break
end
as[size]=temp
size=size+1
end

function sort(arr,_start,_end)
if(_start>=_end)
then
return
end
local pos=arr[_start]
local right=_end
local left=_start
while(left<right)
do
while(left<right)
do
if(pos>arr[right])
then
arr[left]=arr[right]
break
end
right=right-1
end
while(left<right)
do
if(pos<arr[left])
then
arr[right]=arr[left]
break
end
left=left+1
end
end
arr[left]=pos
sort(arr,_start,left)
sort(arr,left+1,_end)
end

sort(as,1,#as)
print (as[#as])
for i,v in pairs(as) do
print(i,v)
end
