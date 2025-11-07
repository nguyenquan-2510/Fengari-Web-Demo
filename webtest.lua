local js = js.global
local document = js.document

print("Hello world ! This is Lua code")

js.console:log("Hello world ! This is JS code")
-- js:alert("You write Lua code ?")

local output = document:getElementById("output")

output.textContent = "Hello world ! This line is written in Lua"


-- HTML
local root = document:getElementById("root")
local html = [[

<h2>Hello from Lua!</h2>
<p>This HTML was inserted from Lua string.</p>
<button id="btn">Click me</button>

]]

root.innerHTML = html