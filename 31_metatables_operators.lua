-- ============================================
-- 31: METATABLES (OPERATORS)
-- ============================================
-- Metatables can make tables work with operators like +, -, *, etc.
-- This lets you create custom behavior for your tables!

-- ============================================
-- __ADD (ADDITION)
-- ============================================
-- __add lets you define what happens when you add two tables together

local vector_mt = {}

vector_mt.__add = function(left, right)
    -- Return a new table with the sum of both vectors
    return {
        left[1] + right[1],
        left[2] + right[2],
        left[3] + right[3]
    }
end

local v1 = setmetatable({ 3, 1, 5 }, vector_mt)
local v2 = setmetatable({ -3, 2, 2 }, vector_mt)

local v3 = v1 + v2  -- This works! Because of __add

print("v3:", v3[1], v3[2], v3[3])  -- Prints: v3: 0 3 7

-- ============================================
-- OTHER OPERATORS
-- ============================================
-- You can define other operators too:
-- __sub  (subtraction: -)
-- __mul  (multiplication: *)
-- __div  (division: /)
-- __mod  (modulo: %)
-- __pow  (exponentiation: ^)
-- __eq   (equality: ==)
-- __lt   (less than: <)
-- __le   (less than or equal: <=)

-- ============================================
-- __CALL (CALLING TABLES AS FUNCTIONS)
-- ============================================
-- __call lets you call a table like it's a function!

local callable_mt = {
    __call = function(self, name)
        print("Hello, " .. name .. "! You called me!")
    end
}

local my_func = setmetatable({}, callable_mt)
my_func("Alice")  -- Prints: Hello, Alice! You called me!

-- The table is now callable like a function!

