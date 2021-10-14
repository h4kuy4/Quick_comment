# QuickComment
## Description
A simple plugin to comment your code with a hotkey written in lua.
## Usage
At `normal` mode press `co` will comment the uncommented line or uncomment the commented line under curosr.  
e.g.
```lua
print("Hello World!")
```
Press `co` and it wlii be commented like this.
```lua
-- print("Hello World!")
```
Press `co` again, it will be uncommented like this.
```lua
print("Hello World!")
```
  
At `visual` mode press `co` will comment the uncommented lines and uncomment the commented lines you select.  
```lua
print("Hello World!")
print("Hello World!")
print("Hello World!")
print("Hello World!")
print("Hello World!")
```
Select these lines in `visual` mode, press `co`, and all of these will be commented like this.
```lua
-- print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
```
Select these lines in `visual` mode again, press `co`, and all of these will be commented like this.
```lua
print("Hello World!")
print("Hello World!")
print("Hello World!")
print("Hello World!")
print("Hello World!")
```
  
```lua
print("Hello World!")
print("Hello World!")
print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
```
Select these lines in `visual` mode, press `co`, and all of these will be commented or uncommented like this.
```lua
-- print("Hello World!")
-- print("Hello World!")
-- print("Hello World!")
print("Hello World!")
print("Hello World!")
print("Hello World!")
```

## Config

