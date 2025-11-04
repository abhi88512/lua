-- ============================================
-- 12: THE LENGTH OPERATOR (#)
-- ============================================
-- The # operator returns the length of strings and tables
-- But there's a catch with map-like tables!

-- ============================================
-- LENGTH OF STRINGS
-- ============================================
local my_string = "Hello"
print("String length:", #my_string)  -- Prints: 5

-- ============================================
-- LENGTH OF LISTS
-- ============================================
local my_list = {1, 2, 3, 4, 5}
print("List length:", #my_list)  -- Prints: 5

-- ============================================
-- THE # OPERATOR QUESTION (ANSWERED!)
-- ============================================
-- Question: What does the below code do?
local reading_scores = { teej_dv = 10, ThePrimeagen = "N/A" }

for index = 1, #reading_scores do
    print(reading_scores[index])
end

-- ANSWER:
-- This prints NOTHING! (or maybe a blank line)
-- 
-- WHY?
-- The # operator returns the length of the SEQUENTIAL part of a table
-- reading_scores has NO sequential numeric indices (1, 2, 3...)
-- It only has string keys: "teej_dv" and "ThePrimeagen"
-- So #reading_scores returns 0 (or undefined behavior)
-- The loop for index = 1, 0 do ... never runs!

-- Let's prove it:
print("Length of reading_scores:", #reading_scores)  -- Prints: 0

-- To iterate a map, use pairs() instead:
for key, value in pairs(reading_scores) do
    print(key, "=", value)
end
-- Prints:
-- teej_dv = 10
-- ThePrimeagen = N/A

-- ============================================
-- KEY TAKEAWAY
-- ============================================
-- # operator only counts sequential numeric indices (1, 2, 3...)
-- For map-like tables with string keys, use pairs() to iterate!

