-- comment

--[[
    multi line comment

--]]
--[[
local num = 5
local string = "hello world"
local single = 'also working'
local multi = "this is also correct (multiline strings commented out)" we can use double square braces also but is conflicting with global multiline comment

local truth,lies = true, false -- boolean
local nothing = nil -- nil value "nothing" / "no value" / "empty"
--]]
--[[
local function hello(name)
    print("Hello!",name)
end

local greet = function(name)
    print("Greetings, ".. name .."!") -- .. string concatenation
end
local me ='Abhilash'
hello(me)
print('--------')
greet(me)
--]]
--[[
local higher_order = function(value)
    return function(another)
        return value + another
    end
end

local add_1 = higher_order(1)
print("add_1(2) -> ", add_1(2))
--]]
-- in lua we can only store collection of values in table think of it as list, dictionary -- for lua
--[[
-- table as list (heterogeneous, 1 indexed)
local list = {"first",2, false, function() print("Func from list!") end}
print("1-indexed:", list[1])
print("4th Value: ", list[4]()) -- why function is printing before 4th Value
-- list[4]() = CALLS the function immediately
-- print() displays the return value
-- function returns nil, so nil is printed
-- ORDER: function runs → prints "Func from list!" → returns nil → print shows nil
print("4th Value: ", list[4]) -- prints address
--]]

--[[
-- table as a map
local t ={
    literal_key = "a string",
    ["an expression"] = 'also works',
    [function() end] = true
}

print("literal_key   : ", t.literal_key)
print("an expression : ", t["an expression"])
print("function() end: ", t[function() end]) -- prints nil as both function points to separate location in memory
-- WHY nil? Each function() end creates NEW function
-- The key is first function, but you're trying to access with different function
-- They're different objects, so key doesn't exist

-- SOLUTION: Store function in variable
local myFunc = function() end
t[myFunc] = true
print(t[myFunc]) -- true (now works!)
--]]