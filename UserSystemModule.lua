local mymodule = {}
local users = require "UserDatabase"

function mymodule.login()
    os.execute("cls")
    print("username:")
    local username = io.read()
    for i, v in pairs(users) do
        if username == v.usernamet then
            os.execute("cls")
            print("account found")
        else
            os.execute("cls")
            print("did not find account")
        end
    end
    print("password:")
    local password = io.read()
    for i, v in pairs(users) do
        if password == v.passwordt then
            os.execute("cls")
            print("Welcome, ".. v.usernamet)
        else
            os.execute("cls")
            print("password not correct")
        end
    end
end

function mymodule.signup()
    os.execute("cls")
    print("username:")
    local username = io.read()
    print("password:")
    local password = io.read()
    table.insert(users, {usernamet = username, passwordt = password})
    os.execute("cls")
end

return mymodule