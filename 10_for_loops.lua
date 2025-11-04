-- ============================================
-- 10: FOR LOOPS
-- ============================================
-- For loops let you repeat code a specific number of times
-- They're perfect when you know exactly how many iterations you need

-- ============================================
-- NUMERIC FOR LOOP
-- ============================================
-- Basic counting loop
for i = 1, 5 do
    print("Counting:", i)
end
-- Prints: 1, 2, 3, 4, 5

-- With step size
for i = 1, 10, 2 do  -- Start at 1, go to 10, step by 2
    print("Step by 2:", i)
end
-- Prints: 1, 3, 5, 7, 9

-- Counting backwards
for i = 10, 1, -1 do
    print("Countdown:", i)
end
-- Prints: 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

-- ============================================
-- ITERATING LISTS WITH NUMERIC FOR
-- ============================================
local favorite_accounts = { "teej_dv", "ThePrimeagen", "terminaldotshop" }

-- Using # operator to get length
for index = 1, #favorite_accounts do  -- # is the length operator
    print(index, favorite_accounts[index])
end
-- Prints:
-- 1  teej_dv
-- 2  ThePrimeagen
-- 3  terminaldotshop

