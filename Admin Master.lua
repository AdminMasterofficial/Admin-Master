local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Key | Admin Master", "DarkTheme")

local Player = game.Players.LocalPlayer
local StarterGui = game:GetService("StarterGui")

_G.Key = "HD_Mstr"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AdminMasterofficial/Loaded-Admin-Master/main/Admin%20Master.lua", true))()
end

function CorrectKeyNotfication()
    StarterGui:SetCore("SendNotification", {
        Title = "Correct Key",
        Text = "Welcome "..Player.Name.." Loaded Admin Master",
        Duration = 5,
    })
end

function IncorrectKeyNotfication()
    StarterGui:SetCore("SendNotification", {
        Title = "Incorrect Key",
        Text = "You enter Incorrect key",
        Duration = 5,
    })
end

local Key = Window:NewTab("Key")
local KeySection = Key:NewSection("Key")

KeySection:NewTextBox("Key", "", function(Value)
    _G.KeyInput = Value
end)

KeySection:NewButton("Enter key", "", function(Value)
    if _G.KeyInput == _G.Key then
        CorrectKeyNotfication()
        wait(4)
        MakeScriptHub()
        Library:ToggleUI()
    else
        IncorrectKeyNotfication()
    end
end)

KeySection:NewButton("Join our community official server", "", function()
    setclipboard("https://discord.gg/V8cWAw4ev4")
end)
