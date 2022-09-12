local datatestmodule = require "UserSystemModule"

--by the l and s for login and signup there is a hidden command database and it will show the user database

while true do
    print("type l for login and s for signup")
    local loginsignup = io.read()

    if string.lower(loginsignup) == "l" then
        datatestmodule.login()
    elseif string.lower(loginsignup) == "s" then
        datatestmodule.signup()
    elseif string.lower(loginsignup) == "database" then
        local users = require "UserDatabase"
        local number = 1
        for i, v in pairs(users) do
            print("user ".. number)
            print("username: ".. v.usernamet)
            print("password: ".. v.passwordt)
            number = number + 1
        end
    end
end
