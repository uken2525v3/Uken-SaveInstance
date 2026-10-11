local saveinstance = loadstring(game:HttpGet("https://github.com/uken2525v3/Uken-SaveInstance/raw/refs/heads/main/source.lua"))()
local options = {}

-[[

Quick start: 

local options = {
  decompile: true | false - Select to compile the script or not.
  Object: Instance - Your target to save example game, game.Car.
  NoteName: string - Name of the note file. The note file came out as script so naming it will be a good thing.
  Note: string - You can put anything here. The message will appears in a note file.
}

]]

saveinstance.init(options)
