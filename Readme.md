# Lua Learning 🌙

Abhilash learning Lua. Please send help.

## What's Inside

- Comments (and how to break them with `[[]]`)
- Functions (they work... sometimes)
- Tables (the "figure it out yourself" data structure)
- Closures (fancy word for "functions that remember stuff")

## The Struggle

```lua
-- This works
local x = 5

-- This broke my brain
--[[ local multi = [[
    why does this fight???
]] ]]

-- This just vibes
local mysterious_function = function(a) return function(b) return a + b end end
```

## Running This Thing

```bash
lua filename.lua
```

And pray. 🙏

## Fun Facts

- Lua starts counting at 1 (because apparently 0 is overrated)
- `nil` = nothing = sad
- Each `function() end` is a different creature (don't mix them up)

---

Made with confusion and coffee ☕