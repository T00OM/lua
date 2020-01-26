---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jj.
--- DateTime: 2020/1/15 10:46
---
-- 表中不含有某一个键时，在元表中为该键设置值
mytable = setmetatable({key1 = "value1"},
        {__index = function(self, key)
            if key == "key2" then
                return "metatablevalue"
            end
        end
        })
-- 元方法不一定为函数，也可以是一个表
t = setmetatable({[1] = "hello"}, {__index = {[2] = "world", [3] = "heiheihei"}})
print(mytable.key1, mytable.key2)
-- 在元表中设置的值并不能直接在表中找到
for i,j in pairs(t) do
    print(t[i])
end
print(t[1], t[2] , t[3])