# Lua Learning Adventure

Welcome to my quirky journey into the world of Lua! This is where I'm figuring out how to make code do things (hopefully the right things).

## What's Inside This Mess?

I've split my learning into bite-sized files (max 3 concepts per file) because my brain can only handle so much at once. Think of it as a choose-your-own-adventure, but for learning Lua!

### The Learning Path (AKA: What I've Figured Out So Far)

**The Basics (Start Here!):**
- Comments - because sometimes you need to tell your future self what you were thinking
- Numbers - floats, integers, and all that math stuff (Lua doesn't care about the difference)
- Strings - single quotes, double quotes, or multiline chaos (all work!)
- Booleans & Nil - true, false, and that mysterious `nil` thing that means "nothing"
- Multiple Assignment - assign multiple values at once (and swap them without a temp variable!)

**Functions (The Reusable Blocks):**
- Basic Functions - reusable blocks of code that make life easier
- Higher-Order Functions - functions that return functions (because why not?)
- Variable Arguments - functions that take any number of arguments (the `...` magic)
- Function Shorthand - string and table shorthand (because typing is hard)
- Colon Functions - method syntax that automatically passes `self` (the `:` magic)

**Tables (Lua's Only Data Structure):**
- Tables as Lists - pretending to be arrays (1-indexed, because 0 is overrated)
- Tables as Maps - pretending to be dictionaries (they're very flexible!)
- Mixed Tables - why not have both? (chaos, but organized chaos!)

**Loops & Iteration (Repeating Yourself):**
- For Loops - counting loops and iterating lists
- ipairs vs pairs - the difference matters (one for lists, one for everything)
- The `#` Operator - length operator that returns 0 on maps (mystery solved!)
- While & Repeat - loops that repeat until something happens

**Conditionals (Making Decisions):**
- If Statements - making decisions in code
- Truthy & Falsy - the conspiracy (spoiler: 0 is truthy! Everything is truthy except false and nil!)
- Comparison Operators - ==, ~=, <, >, <=, >= (and why ~= not !=)
- Logical Operators - and, or, not (the logic squad)

**Operators (Doing Stuff):**
- Arithmetic - math operations (+, -, *, /, %, ^)
- String Operations - concatenation with `..` (because + is for math!)
- Type Checking - the `type()` function (checking what type something is)
- String Methods - find, gsub, rep (useful string stuff)

**Variables & Scope (Where Things Live):**
- Local Variables - the good kind (use these!)
- Global Variables - the dangerous kind (use sparingly!)
- Variable Shadowing - when variables hide each other (confusing but real!)
- Closures - functions that remember things (the power of memory!)

**Modules (Organizing the Chaos):**
- Modules & require() - splitting code into files (because one file is too much!)
- Multiple Returns - functions that return multiple values (and what gets discarded)
- Unpack - converting tables back to multiple values (the reverse of packing!)

**Metatables (The Advanced Stuff):**
- Metatables Basics - changing how tables behave (__index magic!)
- Metatables with Operators - making tables work with +, -, *, etc. (custom math!)
- __newindex - controlling what happens when you assign values
- Cool Examples - lazy Fibonacci sequences and other mind-bending stuff!

## How to Run This Chaos

```bash
lua filename.lua
```

Just pick a file and run it. Most of them have examples you can play with! The files are numbered (01, 02, 03...) but you don't have to follow them in order. Jump around! Experiment! Break things! That's how you learn!

## The Great Mysteries Solved

- **Why does `#` return 0 on map-like tables?** Because `#` only counts sequential numeric indices (1, 2, 3...), and maps have string keys. Mystery solved!
- **Why is everything 1-indexed?** Because Lua developers decided that starting at 1 makes more sense. Who are we to argue?
- **Why is `0` truthy?** Because Lua said so. Only `false` and `nil` are falsy. Everything else is truthy, including empty strings and empty tables. It's chaos, but it's consistent chaos!
- **Why does `function() end` create a new function each time?** Because each call creates a new object in memory. They look the same, but they're different creatures!
- **Why use `~=` instead of `!=`?** Because Lua wanted to be different. Just embrace it.

## Fun Facts That May or May Not Help

- `nil` = nothing = the void = sadness
- Each `function() end` creates a NEW function (even if they look the same!)
- Tables are the ONLY collection type in Lua - they're basically Swiss Army knives
- `local` is your friend (global variables are the enemy of good code)
- `~=` is "not equals" (not `!=` - that's for other languages)
- Files are limited to 3 concepts max (because my brain can only handle so much)
- Lua is designed to be embedded (it's like a friendly parasite that lives in other programs)
- Lua uses "Mechanisms over Policies" (which means it gives you tools, not rules)

## The Original File

If you're curious about the original chaos, check out `learning lua.lua`. It's like a time capsule of my confusion. You can see how it all started before I organized it into bite-sized pieces.

## Status: Still Learning

Made with confusion, coffee, and a healthy dose of "why does this work?"

---

**Pro Tip:** Start with the basics and work your way up. But honestly, you do you. Jump around. Experiment. Break things. That's how you learn! Good luck!
