---

sidebar_position: 2

---

# Installation

- [Installation](#installation)
  - [Roblox Studio Workflow](#roblox-studio-workflow)
    - [Steps:](#steps)
    - [If you don't know how to require a module:](#if-you-dont-know-how-to-require-a-module)
  - [Wally Workflow](#wally-workflow)
    - [How to require a wally package?](#how-to-require-a-wally-package)

This is a page designed to walk you through installing MathPlus and getting it up and running!

## Roblox Studio Workflow

This section is to guide users who are using plain roblox studio to install the module!

### Steps:

1. Go to the [Github Repo](https://github.com/iSophes/MathPlus) -> [Releases](https://github.com/iSophes/mathplus/releases) and download the latest "RBXM" file.

2. Once downloaded, drag it into your Roblox Project. 
   
3. Put this file into somewhere inside of ReplicatedStorage. It doesn't matter where in ReplicatedStorage, it just needs to be inside of ReplicatedStorage.

4. Require MathPlus and use it!

### If you don't know how to require a module:

In your code you should do something similar to this:

```lua
require(game:GetService("ReplicatedStorage"):WaitForChild("Path1"):WaitForChild("Path2"):WaitForChild("MathPlus"))
```

:::note Info
Replace `:WaitForChild("Path1")` with where MathPlus is located!
:::

## Wally Workflow

Using Wally? Easy work! 

Go to your "Wally.toml" file and put the following in under "[Dependencies]":

```
"MathPlus" = "iSophes/MathPlus"
```

Then run wally install and require it!

### How to require a wally package?

Simple! This tutorial will show how to require MathPlus but it will work for any module you want!

```lua
require(game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("MathPlus"))
```

:::note Info
Just replace "MathPlus" with whatever you want for other packages you install
:::


