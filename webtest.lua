local js = js.global

print("Hello world ! This is Lua code")

js.console:log("Hello world ! This is JS code")
js:alert("You write Lua code ?")

local output = js.document:getElementById("output")

output.textContent = "Hello world ! This line is written in Lua"