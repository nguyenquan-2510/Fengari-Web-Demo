# Web development with Lua ?

No ?
Or yes ?


__Ya this is something from ChatGPT__
| **Chức năng / Hành động**      | **JavaScript (bình thường)**          | **Lua trong Fengari**                                                                | **Giải thích / Ghi chú**                 |
| ------------------------------ | ------------------------------------- | ------------------------------------------------------------------------------------ | ---------------------------------------- |
| **Gọi `console.log`**          | `console.log("Hi")`                   | `js.global.console:log("Hi")`                                                        | Dùng `:` để truyền đúng `this` (context) |
| **Hiển thị alert**             | `alert("Hello!")`                     | `js.global:alert("Hello!")`                                                          | `alert` là global, không cần `.console`  |
| **Lấy phần tử DOM**            | `document.getElementById("id")`       | `js.global.document:getElementById("id")`                                            | Phải dùng `:` cho method DOM             |
| **Đổi nội dung HTML**          | `element.textContent = "Hi"`          | `element.textContent = "Hi"`                                                         | Giống hệt nhau                           |
| **Đổi style CSS**              | `element.style.color = "red"`         | `element.style.color = "red"`                                                        | Giống hệt nhau                           |
| **Tạo phần tử mới**            | `let p = document.createElement("p")` | `local p = js.global.document:createElement("p")`                                    | Dùng `:`                                 |
| **Thêm phần tử vào DOM**       | `document.body.appendChild(p)`        | `js.global.document.body:appendChild(p)`                                             | Dùng `:`                                 |
| **Gọi hàm JS custom**          | `sayHello("Lua")`                     | `js.global.sayHello("Lua")`                                                          | Gọi thẳng global function                |
| **Gọi hàm trong object**       | `obj.method(x)`                       | `obj:method(x)`                                                                      | Dấu `:` bắt buộc nếu là method           |
| **Truy cập thuộc tính object** | `obj.value`                           | `obj.value`                                                                          | Giống nhau                               |
| **Tạo object**                 | `{ name: "Lua" }`                     | `js.new(js.global.Object, { name = "Lua" })`                                         | Dùng `js.new(Constructor, args)`         |
| **Tạo mảng**                   | `[1, 2, 3]`                           | `js.new(js.global.Array, 1, 2, 3)`                                                   | Không có literal array trong Lua         |
| **Gọi hàm Math**               | `Math.sqrt(9)`                        | `js.global.Math:sqrt(9)`                                                             | Dùng `:`                                 |
| **Thời gian hiện tại**         | `new Date()`                          | `js.new(js.global.Date)`                                                             | Dùng `js.new()` để gọi constructor       |
| **Truy cập giá trị trả về**    | `let result = add(1,2)`               | `local result = js.global.add(1, 2)`                                                 | Nếu là function global, dùng `.`         |
| **Định nghĩa hàm JS**          | `function hello(){...}`               | *(viết trong `<script>` JS)* rồi Lua gọi `js.global.hello()`                         | Lua không định nghĩa trực tiếp hàm JS    |
| **Gọi callback JS → Lua**      | `btn.onclick = fn`                    | `js.global.document:getElementById("btn").onclick = function() print("clicked") end` | Callback Lua truyền được sang JS         |
| **In ra console trong Lua**    | `console.log(...)`                    | `print(...)` hoặc `js.global.console:log(...)`                                       | Cả hai đều hợp lệ                        |
| **Sử dụng biến global**        | `window.x = 10`                       | `js.global.x = 10`                                                                   | `js.global` tương đương `window`         |
| **Import module (ESM)**        | `import ...`                          | ❌ Không hỗ trợ trong Lua                                                             | Fengari chỉ chạy trong sandbox           |
| **JSON parse/stringify**       | `JSON.parse(str)`                     | `js.global.JSON:parse(str)`                                                          | Dùng `:`                                 |
