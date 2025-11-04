-- ============================================
-- 33: METATABLES (ADVANCED EXAMPLE)
-- ============================================
-- Here's a cool example: using __index to create a lazy Fibonacci sequence
-- This calculates Fibonacci numbers only when you ask for them!

-- ============================================
-- FIBONACCI WITH METATABLES
-- ============================================
-- This creates a table that calculates Fibonacci numbers on demand
-- It's "lazy" - it only calculates when you need it!

local fib_mt = {
    __index = function(self, key)
        -- If we ask for index 0 or 1, return 1
        if key < 2 then 
            return 1 
        end
        
        -- Calculate the Fibonacci number
        -- Fibonacci: fib(n) = fib(n-2) + fib(n-1)
        local value = self[key - 2] + self[key - 1]
        
        -- Save it in the table so we don't have to calculate it again!
        self[key] = value
        
        -- Return the result
        return value
    end
}

-- Create an empty table with the Fibonacci metatable
local fib = setmetatable({}, fib_mt)

-- Now we can ask for any Fibonacci number!
print("fib[5]:", fib[5])   -- Prints: 8 (but calculates it first!)
print("fib[10]:", fib[10]) -- Prints: 89 (but calculates it first!)
print("fib[1000]:", fib[1000]) -- This works! It calculates as needed

-- The cool part: once we calculate fib[5], it's stored in the table
-- So if we ask for it again, it's instant (no recalculation needed!)

-- ============================================
-- HOW IT WORKS
-- ============================================
-- 1. When you ask for fib[5], Lua checks if fib[5] exists
-- 2. It doesn't exist, so Lua looks at the metatable's __index
-- 3. __index runs and calculates fib[5] = fib[3] + fib[4]
-- 4. To calculate fib[3] and fib[4], it calls itself recursively
-- 5. Once calculated, it stores the result in the table
-- 6. Next time you ask for fib[5], it's already there!

-- This is a powerful pattern for lazy evaluation!

