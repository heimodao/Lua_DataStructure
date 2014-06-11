local List = require("List")

local students = List.InitList()
students[1] = {["name"]="Tom",["age"]=22}
students[2] = {["name"]="Jim",["age"]=16}
students[3] = {["name"]="Mike",["age"]=19}
students[4] = {["name"]="Larry",["age"]=18}

-- Find Jim
local function is_jim(j)
	if j == students[2] then
		return true
	else
		return false
	end
end
local result = List.LocateElementByFunction(students, is_jim)
print("compare result is ", result["name"])


-- Check all students is/not adult
local function is_adult(stu)
	if (stu["age"] < 18) then
		return false
	else 
		return true
	end
end
print(List.ListTarverse(students, is_adult))