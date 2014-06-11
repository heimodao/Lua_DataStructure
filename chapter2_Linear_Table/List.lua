-- Utils
local table_realcount = function (table)
	local count = 0
	for k,v in pairs(table) do
    	count = count + 1
	end
	return count
end

-- List Functions
local List = {
	InitList = function () 
		return {}
	end,

	DestroyList = function(list)
		list = nil
	end,

	ClearList = function(list)
		for i in ipairs(list) do
			table.remove(list, list[i])
		end
	end,

	ListLength = function(list)
		return table_realcount(list)
	end,

	ListEmpty = function(list)
		if(list == nil) then
			print("List : Error! List is nil.")
			return nil
		end

		if (table_realcount(list) > 0) then
			return false
		else
			return true
		end
	end,

	GetElementByIndex = function(list, i)
		if(type(i) == "number") then
			return list[i]
		else
			print("List : Error! Index of list should be number.")
			return nil
		end 
	end,

	LocateElementByFunction = function(list, element, compare_function)
		for i in ipairs(list) do
			if compare_function(list[i], element) == true then
				return i
			end
		end
		return 0
	end,

	PriorElement = function(list, current_element)
		for i in ipairs(list) do
			if(current_element == list[i] and i-1 > 0) then
				return list[i-1]
			end
		end
		return nil
	end,

	NextElement = function(list, current_element)
		for i in ipairs(list) do
			if(current_element == list[i] and i+1 <= table_realcount(list)) then
				return list[i+1]
			end
		end
		return nil
	end,

	ListInsert = function(list, element)
		table.insert(list, element)
	end,

	ListDelete = function(list, element)
		table.remove(list, element)
	end,

	ListTarverse = function(list, validate_function)
		for i in ipairs(list) do
			if(validate_function(list[i]) == false) then
				return false
			end
		end
		return true
	end,
}

return List
