local List = require("List")

local function UnionLists(listA, listB)
	local equal_function = function(element1, element2)
		if ( element1 == element2 ) then
			return true
		end
		return false
	end

	for i in ipairs(listB) do
		if( List.LocateElementByFunction(listA, listB[i], equal_function) == 0) then
			List.ListInsert(listA, listB[i])
		end
	end

	return listA
end

local a = {"apple","banana","mango"}
local b = {"apple","orange","banana"}

local merged = UnionLists(a, b)
for i in ipairs(merged) do
	print(merged[i])
end